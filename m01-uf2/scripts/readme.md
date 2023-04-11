## Scripts bàsics en Linux i Windows.

### Linux (.sh)

Per a crear el teu script amb la shell de Linux.

1. Crea el fitxer hacking.sh amb un editor com nano o gedit amb extensió sh

```sh
!/bin/bash
for i in {1..100}
do
 echo "Hacking. $i% completed."
 sleep 2
done
echo "Hacking completed :)"
```

3. Converteix-lo amb programa,  assignant permisos d'execució.

```sh
chmod +x hacking.sh
```

4. Executa i a gaudir :)

./hacking

Una alternativa als passos 3 i 4, si no ets usuari amb permisos, és aquesta:

```sh
sh hacking.sh
```

### Windows (.bat)

Per a crear el teu script executable.

1. Crea el fitxer antivirus.bat amb un editor com notepad o sublimetext

```dos
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
```

2. Ja pots fer doble clic al programa i exexutar-lo.

O des del terminal, que el pots trobar posant cmd al menú del logo de Windows.

```dos
antivirus.bat
```

