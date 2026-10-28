# run_shutdown_test_win.ps1 -- el apagado (setup_shutdown_handler / persist) en Windows.
#
# W5, fila 5 del spike 2026-10-21-w5-windows-linea-de-base.md. Windows no tiene un
# SIGTERM amable: taskkill (sin /F) no llega a un proceso de consola y /F o
# TerminateProcess matan sin avisar. Lo que SI se puede entregar y probar es
# CTRL_BREAK_EVENT a un proceso lanzado con CREATE_NEW_PROCESS_GROUP, que
# runtime/os/os_win32.c mapea a OS_SIGTERM (CTRL_C -> OS_SIGINT; BREAK/CLOSE/
# LOGOFF/SHUTDOWN -> OS_SIGTERM).
#
# Uso (PowerShell, en la laptop):
#   1. Compilar el subset del runtime con persist.c ademas de los TUs de
#      w4_gate_run.sh (persist.c entra por primera vez: setup_shutdown_handler
#      ya no esta en el gate) y enlazar tests/win-fixtures/shutdown_drain_win.win.ll
#      -> shutdown_drain_win.exe (junto a gc.dll).
#   2. .\scripts\testing\run_shutdown_test_win.ps1 -Exe C:\ruta\shutdown_drain_win.exe
#
# Pasa si: el proceso arranca (marcador de inicio), tras CTRL_BREAK sale con rc 0
# y el closure (que ALOCA) dejo su marcador "shutdown-ok-aloco".
param(
    [Parameter(Mandatory = $true)][string]$Exe,
    [int]$StartTimeoutSec = 10,
    [int]$ExitTimeoutSec = 10
)
$ErrorActionPreference = 'Stop'

Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;
public static class NyxCtl {
    [DllImport("kernel32.dll", SetLastError = true)] public static extern bool GenerateConsoleCtrlEvent(uint ev, uint pgid);
    [DllImport("kernel32.dll", SetLastError = true)] public static extern bool AttachConsole(uint pid);
    [DllImport("kernel32.dll", SetLastError = true)] public static extern bool FreeConsole();
    [DllImport("kernel32.dll", SetLastError = true)] public static extern bool SetConsoleCtrlHandler(IntPtr h, bool add);
}
'@

$work = Join-Path ([System.IO.Path]::GetTempPath()) ("nyx_shutdown_" + [guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $work | Out-Null
$start = Join-Path $work 'nyx_shutdown_started.txt'
$mark = Join-Path $work 'nyx_shutdown_marker.txt'

# CREATE_NEW_PROCESS_GROUP (0x200) no se puede pedir con ProcessStartInfo ni
# Start-Process: se lanza con CreateProcessW por P/Invoke.
Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;
public static class NyxSpawn {
    [StructLayout(LayoutKind.Sequential)] public struct STARTUPINFO { public int cb; public string lpReserved, lpDesktop, lpTitle; public int x, y, xs, ys, xc, yc, fill, flags; public short show, res2; public IntPtr res2p, hIn, hOut, hErr; }
    [StructLayout(LayoutKind.Sequential)] public struct PI { public IntPtr hProcess, hThread; public uint pid, tid; }
    [DllImport("kernel32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
    public static extern bool CreateProcessW(string app, string cmd, IntPtr pa, IntPtr ta, bool inherit, uint flags, IntPtr env, string cwd, ref STARTUPINFO si, out PI pi);
    [DllImport("kernel32.dll")] public static extern uint WaitForSingleObject(IntPtr h, uint ms);
    [DllImport("kernel32.dll")] public static extern bool GetExitCodeProcess(IntPtr h, out uint code);
    [DllImport("kernel32.dll")] public static extern bool TerminateProcess(IntPtr h, uint code);
}
'@

$si = New-Object NyxSpawn+STARTUPINFO
$si.cb = [System.Runtime.InteropServices.Marshal]::SizeOf($si)
$pi = New-Object NyxSpawn+PI
$CREATE_NEW_PROCESS_GROUP = 0x200
$ok = [NyxSpawn]::CreateProcessW($Exe, "`"$Exe`"", [IntPtr]::Zero, [IntPtr]::Zero, $false, $CREATE_NEW_PROCESS_GROUP, [IntPtr]::Zero, $work, [ref]$si, [ref]$pi)
if (-not $ok) { Write-Host "  FAIL shutdown-drain-win: CreateProcess fallo ($([Runtime.InteropServices.Marshal]::GetLastWin32Error()))"; exit 1 }

$fail = 0
$deadline = (Get-Date).AddSeconds($StartTimeoutSec)
while (-not (Test-Path $start) -and (Get-Date) -lt $deadline) { Start-Sleep -Milliseconds 100 }
if (-not (Test-Path $start)) {
    Write-Host "  FAIL shutdown-drain-win: el programa no arranco (sin marcador de inicio)"
    [void][NyxSpawn]::TerminateProcess($pi.hProcess, 99)
    exit 1
}

# Mandar CTRL_BREAK_EVENT (1) al grupo (el pid del hijo ES el id del grupo).
# Este proceso no comparte consola con el hijo si no se adjunta: nos adjuntamos
# a su consola, ignoramos CTRL+C/BREAK en nosotros mismos y se lo enviamos.
[void][NyxCtl]::FreeConsole()
if (-not [NyxCtl]::AttachConsole($pi.pid)) {
    # Sin consola propia el hijo hereda la nuestra: GenerateConsoleCtrlEvent basta.
    Write-Host "  (AttachConsole fallo: $([Runtime.InteropServices.Marshal]::GetLastWin32Error()); se intenta el envio directo)"
}
[void][NyxCtl]::SetConsoleCtrlHandler([IntPtr]::Zero, $true)
$sent = [NyxCtl]::GenerateConsoleCtrlEvent(1, $pi.pid)
if (-not $sent) { Write-Host "  FAIL shutdown-drain-win: GenerateConsoleCtrlEvent fallo"; $fail = 1 }

$w = [NyxSpawn]::WaitForSingleObject($pi.hProcess, [uint32]($ExitTimeoutSec * 1000))
if ($w -ne 0) {
    Write-Host "  FAIL shutdown-drain-win: el proceso NO salio tras CTRL_BREAK en $ExitTimeoutSec s"
    [void][NyxSpawn]::TerminateProcess($pi.hProcess, 98)
    $fail = 1
} else {
    [uint32]$code = 0
    [void][NyxSpawn]::GetExitCodeProcess($pi.hProcess, [ref]$code)
    if ($code -ne 0) { Write-Host "  FAIL shutdown-drain-win: exit=$code (esperado 0)"; $fail = 1 }
}
$got = if (Test-Path $mark) { (Get-Content $mark -Raw).Trim() } else { '' }
if ($got -ne 'shutdown-ok-aloco') {
    Write-Host "  FAIL shutdown-drain-win: el closure no corrio o no pudo alocar (marcador: '$got')"
    $fail = 1
}
Remove-Item -Recurse -Force $work -ErrorAction SilentlyContinue
if ($fail -eq 0) {
    Write-Host "  OK shutdown-drain-win: CTRL_BREAK -> closure en contexto normal, aloco, exit 0"
    exit 0
}
exit 1
