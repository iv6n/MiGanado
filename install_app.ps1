$projectPath = "c:\Users\Master\Desktop\Code\MiGanado\miganado"
$apkPath = "$projectPath\build\app\outputs\flutter-apk\app-debug.apk"

Write-Host "Instalando APK..." -ForegroundColor Green
Write-Host "Ruta: $apkPath"

Set-Location $projectPath

# Ejecutar flutter run que instala automáticamente
& flutter run -d V2247
