@echo off
REM Script para ejecutar MiGanado en Android

cd /d "c:\Users\Master\Desktop\Code\MiGanado\miganado" || exit /b 1

echo.
echo ===============================================
echo   MiGanado - Ejecutar en Android
echo ===============================================
echo.

echo [1/4] Limpiando...
call flutter clean
if %ERRORLEVEL% NEQ 0 echo ERROR en clean & exit /b 1
echo OK
echo.

echo [2/4] Obteniendo dependencias...
call flutter pub get
if %ERRORLEVEL% NEQ 0 echo ERROR en pub get & exit /b 1
echo OK
echo.

echo [3/4] Compilando para Android (debug)...
call flutter build apk --debug
if %ERRORLEVEL% NEQ 0 echo ERROR en build & exit /b 1
echo OK
echo.

echo [4/4] Ejecutando en Android...
echo Instalando y ejecutando...
echo.
call flutter run -d V2247

echo.
echo ===============================================
echo   Proceso completado
echo ===============================================
echo.
@echo off
REM Script para ejecutar MiGanado en Android

cd /d "c:\Users\Master\Desktop\Code\MiGanado\miganado" || exit /b 1

echo.
echo ===============================================
echo   MiGanado - Ejecutar en Android
echo ===============================================
echo.

echo [1/4] Limpiando...
call flutter clean
if %ERRORLEVEL% NEQ 0 echo ERROR en clean & exit /b 1
echo OK
echo.

echo [2/4] Obteniendo dependencias...
call flutter pub get
if %ERRORLEVEL% NEQ 0 echo ERROR en pub get & exit /b 1
echo OK
echo.

echo [3/4] Compilando para Android (debug)...
call flutter build apk --debug
if %ERRORLEVEL% NEQ 0 echo ERROR en build & exit /b 1
echo OK
echo.

echo [4/4] Ejecutando en Android...
echo Instalando y ejecutando...
echo.
call flutter run -d V2247

echo.
echo ===============================================
echo   Proceso completado
echo ===============================================
echo.
