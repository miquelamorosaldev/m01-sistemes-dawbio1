@echo off
setlocal

REM Comprobación de argumento
if "%~1"=="" (
    echo Uso: %0 ^<NOM^>
    exit /b 1
)

set "NOM=%~1"

set /p "confirm=¿Estàs segur que vols crear la carpeta 'projecte-%NOM%'? [S/N]: "
if /i "%confirm%" neq "S" if /i "%confirm%" neq "S" exit /b 0

REM Crear la estructura de carpetes y el archiu index.md
mkdir "projecte-%NOM%"
mkdir "projecte-%NOM%\js"
mkdir "projecte-%NOM%\css"
mkdir "projecte-%NOM%\img"
mkdir "projecte-%NOM%\html"
echo docs projecte > "projecte-%NOM%\index.md"

echo ¡La carpeta 'projecte-%NOM%' s'ha creat exitosament!