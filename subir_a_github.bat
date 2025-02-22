@echo off
cd /d %~dp0

echo Agregando cambios...
git add .

echo Creando commit...
git commit -m "Actualización automática"

echo Subiendo cambios a GitHub...
git push origin main

if %errorlevel% neq 0 (
    echo Error al subir cambios.
    pause
    exit /b %errorlevel%
)

echo Cambios subidos correctamente.
pause
exit
