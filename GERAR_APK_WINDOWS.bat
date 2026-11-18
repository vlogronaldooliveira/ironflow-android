@echo off
chcp 65001 >nul
setlocal
cd /d "%~dp0"
echo IRONFLOW - GERADOR DE APK ANDROID
where node >nul 2>nul || (echo Instale Node.js LTS 20 ou 22. & pause & exit /b 1)
where npm >nul 2>nul || (echo npm nao encontrado. & pause & exit /b 1)
if not exist node_modules (
  call npm install
  if errorlevel 1 (echo Falha ao instalar dependencias. & pause & exit /b 1)
)
call npm run build
if errorlevel 1 (echo Falha no build web. & pause & exit /b 1)
if not exist android call npx cap add android
if errorlevel 1 (echo Falha ao criar projeto Android. & pause & exit /b 1)
call npx cap sync android
if errorlevel 1 (echo Falha na sincronizacao. & pause & exit /b 1)
call npx cap open android
pause
