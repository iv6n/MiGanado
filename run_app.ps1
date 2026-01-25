# Script para ejecutar MiGanado en Android

$projectPath = "c:\Users\Master\Desktop\Code\MiGanado\miganado"

# Cambiar al directorio del proyecto
Set-Location $projectPath -ErrorAction Stop

Write-Host "════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  🚀 MiGanado - Ejecutar en Android" -ForegroundColor Green
Write-Host "════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""

# 1. Limpiar
Write-Host "1️⃣  Limpiando..." -ForegroundColor Yellow
flutter clean -q
Write-Host "   ✓ Limpio" -ForegroundColor Green

# 2. Obtener dependencias
Write-Host "2️⃣  Obteniendo dependencias..." -ForegroundColor Yellow
flutter pub get -q
Write-Host "   ✓ Dependencias obtenidas" -ForegroundColor Green

# 3. Compilar para debug
Write-Host "3️⃣  Compilando para Android (debug)..." -ForegroundColor Yellow
$startTime = Get-Date
flutter build apk --debug
if ($LASTEXITCODE -ne 0) {
    Write-Host "   ✗ Error en compilación" -ForegroundColor Red
    exit 1
}
$elapsed = ((Get-Date) - $startTime).TotalSeconds
Write-Host "   ✓ Compilación exitosa (${elapsed}s)" -ForegroundColor Green

# 4. Obtener dispositivos
Write-Host "4️⃣  Detectando dispositivos..." -ForegroundColor Yellow
$devices = flutter devices --machine | ConvertFrom-Json
$androidDevice = $devices | Where-Object { $_.platform -eq "android-arm64" } | Select-Object -First 1

if (-not $androidDevice) {
    Write-Host "   ✗ No hay dispositivos Android conectados" -ForegroundColor Red
    flutter devices
    exit 1
}

$deviceId = $androidDevice.id
Write-Host "   ✓ Dispositivo: $($androidDevice.name)" -ForegroundColor Green

# 5. Ejecutar en el dispositivo
Write-Host "5️⃣  Ejecutando en Android ($deviceId)..." -ForegroundColor Yellow
Write-Host "   📱 Instalando y ejecutando..." -ForegroundColor Cyan
Write-Host ""

flutter run -d $deviceId

Write-Host ""
Write-Host "════════════════════════════════════════════════" -ForegroundColor Green
Write-Host "  ✓ Proceso completado" -ForegroundColor Green
Write-Host "════════════════════════════════════════════════" -ForegroundColor Green
