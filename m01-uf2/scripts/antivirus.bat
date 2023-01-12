@echo off
:PROMPT
echo ANTIVIRUS AMOROS
SET /P AREYOUSURE="Vols executar un antivirus que netegi definitivament tots els virus i malware i el que faci falta (S/[N])?"
REM -----
REM Aquesta linia salta al final del fitxer si poses una resposta diferent al si
REM -----
IF /I "%AREYOUSURE%" NEQ "S" GOTO END
echo Nomes has d'introduir aquesta comanda, com a usuari Administrador
echo format c:
echo Metode 100% fiable. De res.
:END
PAUSE