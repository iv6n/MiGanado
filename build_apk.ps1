# Script para compilar MiGanado APK
Param(
    [ValidateSet("debug", "release")]
    [string]$Mode = "debug"
)

$projectPath = "c:\Users\Master\Desktop\Code\MiGanado\miganado"
$outputPath = "$projectPath\build\app\outputs\apk"

Write-Host "🔨 Compilando MiGanado APK ($Mode)..." -ForegroundColor Green
Write-Host "📁 Directorio: $projectPath" -ForegroundColor Gray

# Navegar al directorio del proyecto
Push-Location $projectPath -ErrorAction Stop

try {
    # Limpiar construcciones anteriores
    Write-Host "🧹 Limpiando construcciones anteriores..." -ForegroundColor Yellow
    flutter clean -q
    
    # Obtener dependencias
    Write-Host "📦 Obteniendo dependencias..." -ForegroundColor Yellow
    flutter pub get -q
    
    # Compilar
    Write-Host "🚀 Compilando..." -ForegroundColor Yellow
    if ($Mode -eq "debug") {
        flutter build apk --debug
    } else {
        flutter build apk --release
    }
    
    # Verificar si fue exitoso
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ ¡Compilación exitosa!" -ForegroundColor Green
        Write-Host "📍 APK generado en: $outputPath" -ForegroundColor Green
        
        # Encontrar el APK
        $apk = Get-ChildItem -Path $outputPath -Filter "*.apk" -Recurse | Sort-Object LastWriteTime | Select-Object -Last 1
        if ($apk) {
            Write-Host "📦 Archivo: $($apk.Name)" -ForegroundColor Green
            Write-Host "📊 Tamaño: $([math]::Round($apk.Length / 1MB, 2)) MB" -ForegroundColor Green
        }
    } else {
        Write-Host "❌ Error en la compilación" -ForegroundColor Red
        exit 1
    }
} finally {
    Pop-Location
}
