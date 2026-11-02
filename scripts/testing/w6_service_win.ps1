# w6_service_win.ps1 -- un .exe de Nyx corriendo como servicio de Windows (W6 Task 5).
#
# Lo corre la laptop (Step 3), como ADMINISTRADOR: sc.exe create/delete lo exige.
# Prueba, con el MISMO programa que corre en consola, lo que hace el runtime
# (runtime/os/os_win32.c, seccion "Servicio de Windows"):
#   1. sc create ... start= auto   y   sc failure ... reset= 0 actions= restart/1000
#   2. sc start        -> RUNNING (el runtime lo reporta antes del main de Nyx)
#   3. taskkill /F     -> el SCM lo reinicia solo (otro PID)
#   4. sc stop         -> STOP_PENDING, el programa recibe SIGTERM (signal_handle),
#                         termina la unidad de trabajo en curso, escribe la marca y
#                         sale con 0; el servicio queda STOPPED con WIN32_EXIT_CODE 0
#                         y NO se reinicia (una parada pedida no es una falla)
#   5. sc delete       -> se limpia SIEMPRE (try/finally), pase lo que pase.
# Imprime la salida de `sc.exe query` en cada paso: es lo que se pega en el reporte.
#
# Uso (PowerShell como administrador, desde la raiz del repo):
#   1. Construir el programa:  cd tests\build-win\servicio ; nyx build
#      (con nyx_build.exe build; w6_build_win.sh test NO lo arma, porque el
#      programa no termina solo)
#   2. .\scripts\testing\w6_service_win.ps1 -Exe C:\ruta\servicio.exe
#
# Pasa si: todos los pasos dicen OK y el script termina con rc 0.
# ASCII a proposito: PowerShell 5.1 lee un .ps1 sin BOM como ANSI.
param(
    [Parameter(Mandatory = $true)][string]$Exe,
    [string]$Name = 'NyxW6Servicio',
    [int]$TimeoutSec = 20
)
$ErrorActionPreference = 'Stop'

$principal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (-not $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host 'FAIL: hace falta una PowerShell como administrador (sc create lo exige)'
    exit 2
}
if (-not (Test-Path $Exe)) { Write-Host "FAIL: no existe $Exe"; exit 2 }
$Exe = (Resolve-Path $Exe).Path

# Un servicio corre con directorio de trabajo System32 y sin consola: la marca y el
# archivo de inicio van por argumento del binPath, en una carpeta propia.
$work = Join-Path ([System.IO.Path]::GetTempPath()) ("nyx_svc_" + [guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $work | Out-Null
$mark = Join-Path $work 'marca.txt'
$start = Join-Path $work 'inicio.txt'

$fail = 0
function Fallo($msg) { Write-Host "  FAIL $msg"; $script:fail = 1 }
function Ok($msg) { Write-Host "  OK   $msg" }

# Imprime `sc query` y devuelve el estado (RUNNING/STOPPED/...) y el PID.
function Consultar($etiqueta) {
    $q = (& sc.exe query $Name | Out-String)
    $qe = (& sc.exe queryex $Name | Out-String)
    Write-Host "--- sc query ($etiqueta)"
    Write-Host $q.TrimEnd()
    $estado = ''
    if ($q -match 'STATE\s*:\s*\d+\s+(\w+)') { $estado = $Matches[1] }
    $procId = 0
    if ($qe -match 'PID\s*:\s*(\d+)') { $procId = [int]$Matches[1] }
    return @{ Estado = $estado; Pid = $procId; Texto = $q }
}

function Esperar-Estado($esperado, $segundos) {
    $limite = (Get-Date).AddSeconds($segundos)
    while ((Get-Date) -lt $limite) {
        $e = ''
        $q = (& sc.exe query $Name | Out-String)
        if ($q -match 'STATE\s*:\s*\d+\s+(\w+)') { $e = $Matches[1] }
        if ($e -eq $esperado) { return $true }
        Start-Sleep -Milliseconds 200
    }
    return $false
}

function Esperar-Archivo($ruta, $segundos) {
    $limite = (Get-Date).AddSeconds($segundos)
    while ((Get-Date) -lt $limite) {
        if (Test-Path $ruta) { return $true }
        Start-Sleep -Milliseconds 100
    }
    return $false
}

try {
    # Por si quedo uno de una corrida anterior interrumpida.
    & sc.exe query $Name 2>&1 | Out-Null
    if ($LASTEXITCODE -eq 0) {
        Write-Host "(limpieza previa de un servicio $Name que ya existia)"
        & sc.exe stop $Name 2>&1 | Out-Null
        [void](Esperar-Estado 'STOPPED' 10)
        & sc.exe delete $Name | Out-Null
        Start-Sleep -Seconds 1
    }

    Write-Host '== 1. crear (start= auto) y configurar el reinicio'
    # New-Service y no `sc.exe create`: PowerShell 5.1 quita las comillas internas
    # de un argumento para un programa nativo (medido en la Step 3), y un binPath
    # con espacios (Program Files) se rompia. New-Service recibe el string tal cual.
    $bin = "`"$Exe`" `"$mark`" `"$start`""
    New-Service -Name $Name -BinaryPathName $bin -StartupType Automatic -DisplayName 'Nyx W6 servicio de prueba' -ErrorAction Stop | Out-Null
    & sc.exe qc $Name | Out-Host
    # reset= 0: el contador de fallas no se reinicia, asi cada kill cuenta como
    # una falla nueva; restart/1000: reiniciar al segundo.
    & sc.exe failure $Name reset= 0 actions= restart/1000/restart/1000/restart/1000 | Out-Host
    if ($LASTEXITCODE -ne 0) { throw "sc failure fallo (rc $LASTEXITCODE)" }
    & sc.exe qfailure $Name | Out-Host

    Write-Host '== 2. arrancar'
    & sc.exe start $Name | Out-Host
    if ($LASTEXITCODE -ne 0) { throw "sc start fallo (rc $LASTEXITCODE)" }
    if (-not (Esperar-Estado 'RUNNING' $TimeoutSec)) { Fallo 'el servicio no llego a RUNNING' }
    $r1 = Consultar 'tras start'
    if ($r1.Estado -eq 'RUNNING') { Ok "RUNNING, pid $($r1.Pid)" } else { Fallo "estado '$($r1.Estado)' (esperado RUNNING)" }
    if (-not (Esperar-Archivo $start $TimeoutSec)) { Fallo 'el main de Nyx no llego a escribir el archivo de inicio' }
    else { Ok "el programa arranco ($((Get-Content $start -Raw).Trim()))" }
    $pid1 = $r1.Pid

    Write-Host '== 3. matar el proceso con taskkill /F (el SCM debe reiniciarlo)'
    Remove-Item $start -Force -ErrorAction SilentlyContinue
    & taskkill.exe /F /PID $pid1 | Out-Host
    $nuevo = 0
    $limite = (Get-Date).AddSeconds($TimeoutSec)
    while ((Get-Date) -lt $limite) {
        Start-Sleep -Milliseconds 300
        $qe = (& sc.exe queryex $Name | Out-String)
        if ($qe -match 'STATE\s*:\s*\d+\s+RUNNING' -and $qe -match 'PID\s*:\s*(\d+)' -and [int]$Matches[1] -ne $pid1 -and [int]$Matches[1] -ne 0) {
            $nuevo = [int]$Matches[1]; break
        }
    }
    $r2 = Consultar 'tras el reinicio'
    if ($nuevo -ne 0) { Ok "reiniciado: pid $pid1 -> $nuevo" } else { Fallo 'el servicio NO se reinicio tras taskkill /F' }
    if (-not (Esperar-Archivo $start $TimeoutSec)) { Fallo 'el programa reiniciado no escribio el archivo de inicio' }
    else { Ok 'el programa reiniciado volvio a arrancar' }

    Write-Host '== 4. sc stop (debe llegar como SIGTERM y dejar la marca)'
    Remove-Item $mark -Force -ErrorAction SilentlyContinue
    $t0 = Get-Date
    & sc.exe stop $Name | Out-Host
    $rp = Consultar 'justo tras stop (STOP_PENDING o ya STOPPED)'
    if (-not (Esperar-Estado 'STOPPED' $TimeoutSec)) { Fallo 'el servicio no llego a STOPPED' }
    $ms = [int]((Get-Date) - $t0).TotalMilliseconds
    $r3 = Consultar "tras stop ($ms ms)"
    if ($r3.Estado -eq 'STOPPED') { Ok "STOPPED a los $ms ms" } else { Fallo "estado '$($r3.Estado)' (esperado STOPPED)" }
    if ($r3.Texto -match 'WIN32_EXIT_CODE\s*:\s*0\b') { Ok 'WIN32_EXIT_CODE 0' } else { Fallo 'WIN32_EXIT_CODE distinto de 0' }
    if (Test-Path $mark) {
        $m = (Get-Content $mark -Raw).Trim()
        if ($m -match '^terminado unidades=\d+ ultima=completa$') { Ok "marca: '$m'" } else { Fallo "marca inesperada: '$m'" }
    } else { Fallo 'no hay marca: el programa no recibio SIGTERM o no termino su trabajo' }

    # Una parada pedida NO debe disparar la accion de recuperacion.
    Start-Sleep -Seconds 3
    $r4 = Consultar '3 s despues de stop (sigue STOPPED, sin reinicio)'
    if ($r4.Estado -eq 'STOPPED') { Ok 'sigue STOPPED (no se reinicio)' } else { Fallo "tras 3 s el estado es '$($r4.Estado)' (esperado STOPPED)" }

    Write-Host '== 5. eventos del SCM (informativo)'
    try {
        Get-WinEvent -FilterHashtable @{ LogName = 'System'; ProviderName = 'Service Control Manager'; StartTime = (Get-Date).AddMinutes(-3) } -ErrorAction Stop |
            Where-Object { $_.Message -match [regex]::Escape('Nyx W6') } |
            Select-Object -First 8 | ForEach-Object { Write-Host ("  [{0}] {1}" -f $_.Id, ($_.Message -replace '\s+', ' ')) }
    } catch { Write-Host "  (no se pudo leer el registro de eventos: $($_.Exception.Message))" }
}
catch {
    Write-Host "  FAIL excepcion: $($_.Exception.Message)"
    $fail = 1
}
finally {
    Write-Host '== limpieza'
    & sc.exe stop $Name 2>&1 | Out-Null
    [void](Esperar-Estado 'STOPPED' 10)
    & sc.exe delete $Name 2>&1 | Out-Host
    Start-Sleep -Milliseconds 500
    & sc.exe query $Name 2>&1 | Out-Null
    if ($LASTEXITCODE -eq 0) { Write-Host '  AVISO: el servicio sigue registrado (marcado para borrar al cerrar los handles)' }
    else { Write-Host '  OK   servicio desinstalado' }
    Remove-Item -Recurse -Force $work -ErrorAction SilentlyContinue
}

if ($fail -eq 0) { Write-Host 'PASS w6_service_win'; exit 0 }
Write-Host 'FAIL w6_service_win'
exit 1
