# install.ps1 -- Nyx installer for native Windows (W6 Task 8).
# https://nyxlang.com
#
# Usage (PowerShell 5.1 or 7, NOT as administrator):
#   .\scripts\install.ps1                      # clones the repo and installs
#   .\scripts\install.ps1 -Source C:\src\nyx   # uses a local clone
#   .\scripts\install.ps1 -NoPath              # does not touch the user PATH
#
# WHAT IT DOES
#   Nyx is self-hosted: the compiler is built from the IR seeds (compiler\*.ll)
#   that the repo tracks for Linux. The Windows seeds are NOT tracked (decision
#   D6): they are DERIVED here with the same two line substitutions that
#   scripts/win_seeds.sh does (target triple, and setjmp -> _setjmp). Then the
#   runtime C sources are compiled and nyx_bootstrap.exe / nyx_build.exe linked.
#   The recipe (TU list, flags, libs, /STACK) is the one of
#   scripts/testing/w6_build_win.sh `tools`: keep them in sync.
#
# LAYOUT (flat, there is no versioned toolchain on Windows: nyx_toolchain.sh is
# POSIX-only). NYX_HOME = $Prefix, by default %USERPROFILE%\.nyx:
#   nyx_bootstrap.exe   the compiler (compiler\build.nx looks for it HERE first)
#   bin\nyx.exe         the driver (nyx_build.exe): nyx build / run / init ...
#                       It is NOT the compiler; only bin\ goes into the PATH.
#   bin\nyx_check.exe   the checker  (the driver dispatches `nyx check` to it)
#   bin\nyx_fmt.exe     the formatter (the driver dispatches `nyx fmt` to it)
#                       (nyx_test is NOT installed: test.nx still needs bash.)
#   runtime\            runtime C sources + headers (runtime\os\ included)
#   std\  templates\    stdlib and `nyx init` templates
#   VERSION  LLM.md  CHANGELOG.md
# The install is atomic: everything is built in "$Prefix.new" and swapped in at
# the end; if anything fails before that, the previous install is untouched.
#
# WHAT IT NEVER DOES: install services, touch the registry (except the USER
# Path variable), handle credentials, open ports, touch the firewall, ask for
# elevation, or install the prerequisites by itself.
#
# ASCII on purpose: PowerShell 5.1 reads a .ps1 without BOM as ANSI.
[CmdletBinding()]
param(
    [string]$Source = '',
    [string]$Prefix = '',
    [ValidateSet('x64', 'arm64')][string]$Arch = '',
    [switch]$NoPath
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$RepoUrl = 'https://github.com/nyxlang-dev/nyx.git'

# Same module list as scripts/win_seeds.sh and scripts/testing/w6_build_win.sh.
$Modules = @('lexer', 'parser', 'types', 'semantic', 'borrow', 'licm', 'resolve',
    'codegen', 'nyx', 'gotchas_table', 'build', 'nyx_check', 'fmt')
$CompilerModules = @('lexer', 'parser', 'types', 'semantic', 'borrow', 'licm',
    'resolve', 'codegen', 'nyx')

# Runtime translation units (same list as `tools` in w6_build_win.sh).
$Tus = @('runtime.c', 'strings.c', 'runtime-arrays.c', 'maps.c', 'file-io.c',
    'iterators.c', 'net.c', 'thread.c', 'time.c', 'crypto.c', 'tls.c',
    'scheduler.c', 'sqlite_adapter.c', 'compress.c', 'random.c', 'url.c',
    'msgpack.c', 'csv.c', 'websocket.c', 'persist.c', 'http2.c',
    'llama_adapter.c', 'os\event_loop_win32.c', 'os\os_win32.c')

function Say([string]$m) { Write-Host "  nyx   $m" -ForegroundColor Cyan }
function Ok([string]$m) { Write-Host "    ok  $m" -ForegroundColor Green }
function Warn([string]$m) { Write-Host "  warn  $m" -ForegroundColor Yellow }
function Fail([string]$m) { Write-Host "  error $m" -ForegroundColor Red; exit 1 }

# Runs a native program and returns its exit code. With $ErrorActionPreference
# = 'Stop', Windows PowerShell 5.1 turns anything a native program writes on
# stderr into a terminating error, so the preference is relaxed just for the
# call and the real verdict is $LASTEXITCODE.
function Invoke-Native([string]$Exe, [string[]]$ArgList) {
    $saved = $ErrorActionPreference
    $ErrorActionPreference = 'Continue'
    try {
        & $Exe @ArgList | Out-Host
        return $LASTEXITCODE
    }
    finally {
        $ErrorActionPreference = $saved
    }
}

# Starts an exe in an empty scratch directory and answers ONE question: did
# Windows let it run? $true = the process started (its exit code does NOT
# matter: nyx.exe --version may still say "unknown command"); $false = the OS
# refused to launch it (Smart App Control: "An Application Control policy has
# blocked this file", a Win32Exception). Any other launch error is rethrown.
# Output goes to files and stdin is an empty file, so nothing can hang or write
# into the repo or the install; a process that runs over 60 s is killed (it did
# start, which is all that is asked).
function Test-Launch([string]$Exe, [string[]]$ArgList, [string]$WorkDir) {
    New-Item -ItemType Directory -Force -Path $WorkDir | Out-Null
    $inF = Join-Path $WorkDir 'stdin.txt'
    Set-Content -LiteralPath $inF -Value '' -Encoding Ascii
    $sp = @{
        FilePath = $Exe; WorkingDirectory = $WorkDir; PassThru = $true; WindowStyle = 'Hidden'
        RedirectStandardInput = $inF
        RedirectStandardOutput = (Join-Path $WorkDir 'stdout.txt')
        RedirectStandardError = (Join-Path $WorkDir 'stderr.txt')
    }
    # Start-Process rejects an empty -ArgumentList in PowerShell 5.1.
    if ($ArgList -and $ArgList.Count -gt 0) { $sp['ArgumentList'] = $ArgList }
    try {
        $proc = Start-Process @sp
    }
    catch {
        $blocked = $false
        $ex = $_.Exception
        while ($null -ne $ex) {
            if ($ex -is [System.ComponentModel.Win32Exception] -or
                $ex.Message -match 'Application Control|blocked|group policy') { $blocked = $true }
            $ex = $ex.InnerException
        }
        if ($blocked) { return $false }
        throw
    }
    if (-not $proc.WaitForExit(60000)) { try { $proc.Kill() } catch { } }
    return $true
}

# Same as Invoke-Native but dies, showing the command, if rc != 0.
function Invoke-Checked([string]$What, [string]$Exe, [string[]]$ArgList) {
    $rc = Invoke-Native $Exe $ArgList
    if ($rc -ne 0) {
        Write-Host "  command: $Exe $($ArgList -join ' ')" -ForegroundColor Red
        Fail "$What failed (exit code $rc)"
    }
}

function Test-Tool([string]$name) {
    return ($null -ne (Get-Command $name -ErrorAction SilentlyContinue))
}

# ---- Arch ------------------------------------------------------------------
$archExplicit = ($Arch -ne '')
if (-not $archExplicit) {
    $pa = $env:PROCESSOR_ARCHITECTURE
    if ($env:PROCESSOR_ARCHITEW6432) { $pa = $env:PROCESSOR_ARCHITEW6432 }
    if ($pa -eq 'AMD64') { $Arch = 'x64' }
    elseif ($pa -eq 'ARM64') {
        Fail 'Windows on ARM64 is not supported yet (only x64 is verified). Pass -Arch arm64 to try it anyway: it is untested.'
    }
    else { Fail "unsupported processor architecture: $pa" }
}
if ($Arch -eq 'arm64') {
    Warn 'arm64 is NOT verified: only x64 has been tested. Continuing because -Arch arm64 was explicit.'
    $Triple = 'aarch64-pc-windows-msvc'
    $VcpkgTriple = 'arm64-windows-static'
}
else {
    $Triple = 'x86_64-pc-windows-msvc'
    $VcpkgTriple = 'x64-windows-static'
}

if ($Prefix -eq '') {
    if (-not $env:USERPROFILE) { Fail 'USERPROFILE is not set; pass -Prefix' }
    $Prefix = Join-Path $env:USERPROFILE '.nyx'
}
$Prefix = [IO.Path]::GetFullPath($Prefix).TrimEnd('\')

Write-Host ''
Write-Host '  Installing Nyx Language (Windows)' -ForegroundColor White
Write-Host ''

# ---- Prerequisites (nothing is installed, nothing is written) --------------
$missing = New-Object System.Collections.ArrayList
$needGit = ($Source -eq '')

foreach ($t in @('clang', 'llvm-ar', 'lld-link')) {
    if (-not (Test-Tool $t)) {
        [void]$missing.Add("$t not found in PATH (it comes with LLVM: https://github.com/llvm/llvm-project/releases, or 'winget install LLVM.LLVM')")
    }
}
if ($needGit -and -not (Test-Tool 'git')) {
    [void]$missing.Add("git not found in PATH (needed to clone the repo; or pass -Source <local clone>)")
}

$GcInc = $env:NYX_GC_INCLUDE
$GcLib = $env:NYX_GC_LIBDIR
if (-not $GcInc -or -not (Test-Path -LiteralPath (Join-Path $GcInc 'gc.h'))) {
    [void]$missing.Add('NYX_GC_INCLUDE: the directory with gc.h of bdwgc')
}
if (-not $GcLib -or -not (Test-Path -LiteralPath (Join-Path $GcLib 'gc.lib'))) {
    [void]$missing.Add('NYX_GC_LIBDIR: the directory with the STATIC gc.lib of bdwgc (/MT, enable_large_config=ON)')
}
elseif (Test-Path -LiteralPath (Join-Path $GcLib 'gc.dll')) {
    [void]$missing.Add("NYX_GC_LIBDIR points to a dynamic bdwgc (there is a gc.dll in $GcLib): the .exe would need gc.dll; the static one is required")
}

$Vcpkg = $env:VCPKG_ROOT
$Ossl = ''
if ($Vcpkg) { $Ossl = Join-Path (Join-Path $Vcpkg 'installed') $VcpkgTriple }
if (-not $Vcpkg `
        -or -not (Test-Path -LiteralPath (Join-Path $Ossl 'lib\libssl.lib')) `
        -or -not (Test-Path -LiteralPath (Join-Path $Ossl 'include\openssl\ssl.h'))) {
    [void]$missing.Add("VCPKG_ROOT: a vcpkg with static OpenSSL (vcpkg install openssl:$VcpkgTriple)")
}

# clang must be able to link with lld-link against the Windows SDK / MSVC libs.
$tmpRoot = Join-Path ([IO.Path]::GetTempPath()) ('nyx-install-' + [Guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $tmpRoot | Out-Null
$Staging = $Prefix + '.new'
$OldDir = $Prefix + '.old'
$swapped = $false

try {
    if ((Test-Tool 'clang') -and (Test-Tool 'lld-link')) {
        $probe = Join-Path $tmpRoot 'probe.c'
        Set-Content -LiteralPath $probe -Value 'int main(void) { return 0; }' -Encoding Ascii
        $probeExe = Join-Path $tmpRoot 'probe.exe'
        $rc = Invoke-Native 'clang' @("--target=$Triple", '-fuse-ld=lld-link', $probe, '-o', $probeExe)
        if ($rc -ne 0 -or -not (Test-Path -LiteralPath $probeExe)) {
            [void]$missing.Add("clang cannot link with -fuse-ld=lld-link (Visual Studio Build Tools with the Windows SDK are needed: winget install Microsoft.VisualStudio.2022.BuildTools)")
        }
    }

    if ($missing.Count -gt 0) {
        Write-Host '  error: to build Nyx you need:' -ForegroundColor Red
        foreach ($m in $missing) { Write-Host "    - $m" -ForegroundColor Red }
        Write-Host '  Nothing was installed or modified.' -ForegroundColor Red
        exit 1
    }
    Ok "Prerequisites found (target $Triple)"

    # ---- Source --------------------------------------------------------------
    if ($Source -ne '') {
        if (-not (Test-Path -LiteralPath $Source -PathType Container)) { Fail "-Source: no such directory: $Source" }
        $Src = (Resolve-Path -LiteralPath $Source).Path
    }
    else {
        $Src = Join-Path $tmpRoot 'src'
        Say 'Cloning Nyx...'
        Invoke-Checked 'git clone' 'git' @('clone', '--depth', '1', $RepoUrl, $Src)
    }
    foreach ($need in @('compiler\lexer.ll', 'runtime\runtime.c', 'std', 'templates', 'VERSION')) {
        if (-not (Test-Path -LiteralPath (Join-Path $Src $need))) { Fail "$Src is not a Nyx checkout (missing $need)" }
    }
    $Version = (Get-Content -LiteralPath (Join-Path $Src 'VERSION') -Raw).Trim()
    Ok "Source: $Src (v$Version)"

    # ---- Seeds: Linux IR -> Windows IR (same as scripts/win_seeds.sh) --------
    # Exact whole-line substitutions, no loose regex. Both must match or we stop.
    Say 'Deriving Windows seeds...'
    $IrDir = Join-Path $tmpRoot 'ir'
    New-Item -ItemType Directory -Path $IrDir | Out-Null
    $tripleFrom = "`ntarget triple = `"x86_64-pc-linux-gnu`"`n"
    $tripleTo = "`ntarget triple = `"$Triple`"`n"
    $setjmpFrom = "`ndeclare i32 @setjmp(i8*) #0`n"
    $setjmpTo = "`ndeclare i32 @_setjmp(i8*, i8*) #0`n"
    $utf8 = New-Object System.Text.UTF8Encoding($false)
    foreach ($m in $Modules) {
        $in = Join-Path $Src "compiler\$m.ll"
        if (-not (Test-Path -LiteralPath $in)) { Fail "missing seed: compiler\$m.ll" }
        # A git checkout with autocrlf may have CRLF: normalize, and a leading
        # newline so the first line can match as a whole line too.
        $t = "`n" + [IO.File]::ReadAllText($in).Replace("`r`n", "`n")
        if ($t.IndexOf($tripleFrom, [StringComparison]::Ordinal) -lt 0 -or
            $t.IndexOf($setjmpFrom, [StringComparison]::Ordinal) -lt 0) {
            Fail "$m.ll does not have the expected shape (Linux target triple line and setjmp declare)"
        }
        $t = $t.Replace($tripleFrom, $tripleTo).Replace($setjmpFrom, $setjmpTo)
        [IO.File]::WriteAllText((Join-Path $IrDir "$m.ll"), $t.Substring(1), $utf8)
    }
    Ok "$($Modules.Count) seeds derived"

    # ---- Runtime objects -----------------------------------------------------
    Say 'Compiling the runtime...'
    $ObjDir = Join-Path $tmpRoot 'obj'
    New-Item -ItemType Directory -Path $ObjDir | Out-Null
    $objs = New-Object System.Collections.ArrayList
    foreach ($tu in $Tus) {
        $obj = Join-Path $ObjDir ([IO.Path]::GetFileNameWithoutExtension($tu) + '.obj')
        Invoke-Checked "compiling runtime\$tu" 'clang' @(
            "--target=$Triple", '-c', '-O2', '-Wno-deprecated-declarations',
            '-D_CRT_SECURE_NO_WARNINGS', "-I$GcInc", "-I$Ossl\include",
            (Join-Path $Src "runtime\$tu"), '-o', $obj)
        [void]$objs.Add($obj)
    }
    Ok "$($Tus.Count) runtime files compiled"

    # ---- Link ----------------------------------------------------------------
    # Staging dir: nothing under $Prefix is touched until the very end.
    if (Test-Path -LiteralPath $Staging) { Remove-Item -LiteralPath $Staging -Recurse -Force }
    New-Item -ItemType Directory -Path $Staging | Out-Null
    New-Item -ItemType Directory -Path (Join-Path $Staging 'bin') | Out-Null

    $ld = @('-fuse-ld=lld-link', "-L$GcLib", '-lgc', "-L$Ossl\lib", '-llibssl', '-llibcrypto',
        '-lcrypt32', '-lws2_32', '-luser32', '-ladvapi32')
    $compLls = @(); foreach ($m in $CompilerModules) { $compLls += (Join-Path $IrDir "$m.ll") }

    # One entry per installed executable: output path, IR modules, whether it
    # takes the 64 MB stack, and the smoke arguments (see Test-Launch).
    $Tools = @(
        @{ Rel = 'nyx_bootstrap.exe'; Lls = $compLls; Stack = $true; Smoke = @() },
        @{ Rel = 'bin\nyx.exe'; Lls = @((Join-Path $IrDir 'build.ll'), (Join-Path $IrDir 'gotchas_table.ll')); Stack = $false; Smoke = @('--version') },
        @{ Rel = 'bin\nyx_check.exe'; Lls = @(); Stack = $false; Smoke = @() },
        @{ Rel = 'bin\nyx_fmt.exe'; Lls = @(); Stack = $false; Smoke = @() }
    )
    foreach ($n in @('nyx_check', 'lexer', 'parser', 'types', 'semantic', 'resolve')) { $Tools[2].Lls += (Join-Path $IrDir "$n.ll") }
    foreach ($n in @('fmt', 'lexer', 'parser')) { $Tools[3].Lls += (Join-Path $IrDir "$n.ll") }

    function Link-Tool($t) {
        $out = Join-Path $Staging $t.Rel
        if (Test-Path -LiteralPath $out) { Remove-Item -LiteralPath $out -Force }
        # 64 MB stack (compiler only): on Windows the .exe header reserves it and
        # the default 1 MB is an eighth of Linux's 8 MB (measured in W6 Task 2).
        $stack = @(); if ($t.Stack) { $stack = @('-Wl,/STACK:67108864') }
        Invoke-Checked "linking $($t.Rel)" 'clang' (
            @("--target=$Triple", '-O1', '-Wno-override-module') + $t.Lls + $objs.ToArray() + $ld +
            $stack + @('-o', $out))
    }

    foreach ($t in $Tools) {
        Say "Linking $($t.Rel)..."
        Link-Tool $t
    }
    Ok 'nyx_bootstrap.exe, nyx.exe, nyx_check.exe and nyx_fmt.exe linked'

    # ---- Smoke: can Windows run what we just linked? ---------------------------
    # Smart App Control may block a freshly linked, unsigned .exe. Every link has
    # a new hash and so a new verdict, hence: re-link THAT binary (up to 5
    # times) and only then give up -- BEFORE replacing the previous install.
    Say 'Checking that Windows lets the new binaries run...'
    $relinks = 0
    foreach ($t in $Tools) {
        $tries = 0
        $smokeDir = Join-Path $tmpRoot ('smoke-' + [IO.Path]::GetFileNameWithoutExtension($t.Rel))
        while (-not (Test-Launch (Join-Path $Staging $t.Rel) $t.Smoke $smokeDir)) {
            if ($tries -ge 5) {
                Write-Host "  error $($t.Rel) was blocked by Windows even after $tries re-links." -ForegroundColor Red
                Write-Host '  Smart App Control blocked the freshly linked, unsigned binary. This is NOT a defect' -ForegroundColor Red
                Write-Host '  of Nyx. Run the installation again (every link gets a new hash and a new verdict),' -ForegroundColor Red
                Write-Host '  or sign the binary / turn Smart App Control off (see the Microsoft documentation).' -ForegroundColor Red
                Write-Host "  $Prefix was NOT touched: the previous install, if any, is intact." -ForegroundColor Red
                $relinks += $tries
                exit 1
            }
            $tries++
            Warn "$($t.Rel) was blocked by Windows (Smart App Control); re-linking ($tries of 5)..."
            Link-Tool $t
        }
        $relinks += $tries
    }
    Ok "all 4 binaries run ($relinks re-link(s) needed)"

    # ---- Copy the tree the driver needs at build time --------------------------
    Say 'Copying runtime, std and templates...'
    foreach ($d in @('runtime', 'std', 'templates')) {
        Copy-Item -LiteralPath (Join-Path $Src $d) -Destination (Join-Path $Staging $d) -Recurse -Force
    }
    foreach ($f in @('VERSION', 'LLM.md', 'CHANGELOG.md', 'LICENSE')) {
        $p = Join-Path $Src $f
        if (Test-Path -LiteralPath $p) { Copy-Item -LiteralPath $p -Destination (Join-Path $Staging $f) -Force }
    }
    # Same fallback as install.sh: `nyx init` seeds docs\nyx\LLM.md from here.
    $llmTpl = Join-Path $Staging 'templates\en\docs\nyx\LLM.md'
    if (-not (Test-Path -LiteralPath $llmTpl) -and (Test-Path -LiteralPath (Join-Path $Staging 'LLM.md'))) {
        New-Item -ItemType Directory -Force -Path (Split-Path $llmTpl) | Out-Null
        Copy-Item -LiteralPath (Join-Path $Staging 'LLM.md') -Destination $llmTpl -Force
    }
    foreach ($need in @('nyx_bootstrap.exe', 'bin\nyx.exe', 'bin\nyx_check.exe', 'bin\nyx_fmt.exe', 'runtime\runtime.c', 'runtime\os\os_win32.c', 'VERSION')) {
        if (-not (Test-Path -LiteralPath (Join-Path $Staging $need))) { Fail "staging is incomplete (missing $need)" }
    }

    # ---- Atomic swap -----------------------------------------------------------
    Say "Installing into $Prefix..."
    $step = ''
    try {
        $step = "remove the leftover $OldDir from an earlier install"
        if (Test-Path -LiteralPath $OldDir) { Remove-Item -LiteralPath $OldDir -Recurse -Force }
        $hadOld = Test-Path -LiteralPath $Prefix
        if ($hadOld) {
            $step = "move $Prefix to $OldDir"
            Move-Item -LiteralPath $Prefix -Destination $OldDir
        }
        try {
            $step = "move the new install ($Staging) to $Prefix"
            Move-Item -LiteralPath $Staging -Destination $Prefix
        }
        catch {
            if ($hadOld -and -not (Test-Path -LiteralPath $Prefix)) { Move-Item -LiteralPath $OldDir -Destination $Prefix }
            throw
        }
        $swapped = $true
    }
    catch {
        Fail "could not $step (is a nyx process still running from it?): $($_.Exception.Message). The previous install was left intact in $Prefix."
    }
    if (Test-Path -LiteralPath $OldDir) {
        try { Remove-Item -LiteralPath $OldDir -Recurse -Force }
        catch { Warn "the NEW install is already in place at $Prefix. $OldDir is the PREVIOUS one, still in use by an open process; delete it by hand once that process is closed." }
    }
    Ok "Installed in $Prefix"
}
finally {
    if (Test-Path -LiteralPath $tmpRoot) {
        try { Remove-Item -LiteralPath $tmpRoot -Recurse -Force } catch { }
    }
    if (-not $swapped -and (Test-Path -LiteralPath $Staging)) {
        try { Remove-Item -LiteralPath $Staging -Recurse -Force } catch { }
    }
}

# ---- PATH (user only, never machine) -----------------------------------------
$BinDir = Join-Path $Prefix 'bin'
$pathNote = ''
if ($NoPath) {
    $pathNote = "PATH not modified (-NoPath). Add this directory to your PATH: $BinDir"
}
else {
    $userPath = [Environment]::GetEnvironmentVariable('Path', 'User')
    if ($null -eq $userPath) { $userPath = '' }
    $already = $false
    foreach ($e in ($userPath -split ';')) {
        if ($e.Trim().TrimEnd('\') -ieq $BinDir) { $already = $true }
    }
    if ($already) {
        Ok "$BinDir is already in your user PATH"
    }
    else {
        if ($userPath -ne '' -and -not $userPath.EndsWith(';')) { $userPath += ';' }
        [Environment]::SetEnvironmentVariable('Path', ($userPath + $BinDir), 'User')
        Ok "Added $BinDir to your user PATH"
        $pathNote = 'Open a NEW terminal for the PATH change to take effect.'
    }
}

# ---- Verify ----------------------------------------------------------------------
# The installed VERSION file is the source of truth (it is what `nyx init` stamps into projects).
$installed = (Get-Content -LiteralPath (Join-Path $Prefix 'VERSION') -Raw).Trim()

Write-Host ''
Write-Host "  Nyx $installed installed successfully!" -ForegroundColor Green
if ($pathNote -ne '') { Write-Host "  $pathNote" -ForegroundColor Yellow }
Write-Host ''
Write-Host '  Next steps:'
Write-Host '    nyx init hola'
Write-Host '    cd hola'
Write-Host '    nyx run'
Write-Host ''
Write-Host '  The build needs NYX_GC_INCLUDE, NYX_GC_LIBDIR and VCPKG_ROOT in the'
Write-Host '  environment of every terminal where you run `nyx build` / `nyx run`.'
Write-Host ''
Write-Host '  Note: Windows Smart App Control may block a freshly linked, unsigned .exe.'
Write-Host '  In PowerShell you see "An Application Control policy has blocked this file";'
Write-Host '  in Git Bash it is exit code 126. Each link gets a new hash and a new verdict:'
Write-Host '    - a .exe of YOUR PROJECT is blocked: run `nyx build` again (it re-links).'
Write-Host '    - nyx.exe or nyx_bootstrap.exe is blocked: run this installer again.'
Write-Host '  (The installer already re-links its own binaries up to 5 times.) Or sign the'
Write-Host '  binaries / turn Smart App Control off, see the Microsoft documentation.'
Write-Host '  Learn more: https://nyxlang.com/docs/'
Write-Host ''
