@echo off
setlocal

set "URL=https://es.wikipedia.org/wiki/Thanos"

REM Definir el número de veces que deseas abrir la URL
set "veces=10"

REM Bucle para abrir la URL múltiples veces
for /l %%i in (1, 1, %veces%) do (
    start "" "%URL%"
)