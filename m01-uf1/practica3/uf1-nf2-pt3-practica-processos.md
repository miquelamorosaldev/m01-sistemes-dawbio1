# COMANDES DAWBIO1-M01-UF1. PT31. 

## Consulta processos i CPU Windows.

### 1a. 

Ctrl+Alt+Del

S'obre l'Admin. Tareas

## 1b.

Con el Admin Tareas abierto:
    
    a) Seleccionamos Aplicación que queremos finalizar
    b) Clic Der.
    c) FINALIZAR TAREA
    

## Gestió processos bàsica a Windows i Linux

### 2a.  Windows

Ctrl + Alt + Del

Pestaña rendimiento

-> haced la captura

### 2b. Linux

Opció 1.

top

Les 5 primeres linies mostren l'ús de la CPU (linea 3) i RAM (linea 4)

Opció 2.
Instal.lar htop

sudo apt-get install htop

htop

Opció 3. 
Instal.lar inxi

sudo apt-get install inxi

inxi -c

## 3a. Copia seguretat Windows.

Obrir terminal.

Posar cmd (al Cortana, logo Windows)

### 31. 
mkdir pt31

Per veure si s'ha creat:
    dir /p 
    o
    dir pt3*

Curiositat, cercar fitxers a Windows:
https://esgeeks.com/buscar-archivos-carpetas-cmd-windows/
dir /b/s *.extensión_archivo

### 32. 

cd pt31

notepad pt31-doc.txt

Ponemos la linea:
    
    Fichero de prueba

Y guardamos.

### P33.

cd ..

Ahora, estamos en el directorio donde hay la carpeta pt31

Xcopy pt31 pt31-copia /E /H /C /I

Explicació dels paràmetres (fitxers ocults, subcarpetes...) :
    https://www.ubackup.com/es/articulos/copiar-carpetas-y-subcarpetas-con-comando-xcopy.html

### P34

dir /p

## 3b. Còpia de seguretat a Linux

Pistes:
    
    cp -r
    
    Oculto:
        Primer carácter tiene que ser un .


### 31.

mkdir pt31

Opcional, multiples carpetas.
https://askubuntu.com/questions/731721/is-there-a-way-to-create-multiple-directories-at-once-with-mkdir

Crear 20 carpetes auto:
    
mkdir -p or{1..20}

Crear 20 fitxers auto:

touch fitxer{1..20}.txt

### 32.

opció 1: gedit
cd pt31
gedit pt31-doc.txt
<Escribimos el texto y guardamos>

opció 2: nano o vim
cd pt31
nano pt31-doc.txt
<Escribimos el texto>
:w
:q

### 33.
    
cp -r pt31 Documentos/pt31-copia

### 33 y 34:
cp -r pt31 Documentos/.pt31-copia

### 34.
Per a canviar el nom del fitxer usem el mv (com ho fem per moure)
mv pt31-copia .pt31-copia

### 35. 
Per a veure fitxers ocults, usar el paràmetre -a
ls -la

(*) ==> los comandos los aplico a mi ruta, que en este caso es mi carpeta de usuario. 
Depende de donte tengais el documento la ruta puede ser otra.  


### Exercici opcional:

Crea una carpeta oculta anomenada secretes, que dins tingui 10 carpetes buides (s1,s2,...) i 4 fitxers buits (f1.txt, ... ,f4.txt) 
Fes una còpia de seguretat dins la carpeta de Imagenes de la teva carpeta d'usuari.
    
    
Resolució:
```console
    mkdir -p .secretes/s{1..10}
    cd .. 
    touch f{1..4}.txt
    cp -r .secretes/ .secretes-copia/
    ls -la
```

## Ex 4. Processos Linux

Executa       en primer pla l‘ordre         “sleep 500”         i         prova de fer les següents accions.         

sleep 500

Pots         usar la línia de comandes?.         

No, perquè hi ha un procés en primer pla que bloqueja el terminal.

Para         el procés         (no         el matis). Ara, pots usar el terminal ?                   
Ctrl + Z

Sí, perquè hem parat el procés.

Consulta         la llista de tasques pendents i l'estat del procés.                    

miquelamoros@pop-os:~$ jobs -l
[1]+  4651 Parado                  sleep 500

Torna         el procés         al primer pla.                   

fg %1

fg -> Envia procés al primer pla. %1, és l'id del jobs.


Ara         sí, indica         la comanda         per         finalitzar (matar) el procés.             
Ctrl + C


## 5. Arbre de processos Linux

Si no el teniu instal·lat:
sudo apt-get install psmisc

pstree > processos.txt

## 6. Script com a procés.


### Crea el següent script, anomenat infinit.xh:

```bash
#!/bin/bash 
while true
do
  echo "Només utilitzaré l'ordinador amb finalitats acadèmiques i professionals."
  sleep 3
done
```


### 6a. Executa'l

Opció 1 (si no teniu permisos d'admin)

```bash
bash infinit.sh
```
    
Opció 2
    
```bash
chmod +x infinit.sh
./infinit.sh
```

### 6b. Mira id procés

```bash
[1] 5084
./infinit.sh &
```
    
### 6c.

Puc usar el terminal però el text apareix enmig.

### 6d.
    
Sí, opcions:
    
    kill %1
    
    pkill <id_process>
    pkill 5084


## 7. Xifres número pi

100 xifres, molt ràpid:
    
```bash
    time echo scale="100; 4*a(1)" | bc -l
```
    
4500 xifres, més lent:

```bash
time echo scale="4500; 4*a(1)" | bc -l &
time echo scale="4500; 4*a(1)" | bc -l &
``` 
    
### 7a. Des del terminal, arrenca   2 processos (p1 i p2) que generen les primeres 5000 i 8000 xifres del número pi en segon pla. 
    
El  codi del procés és:   
    
```bash
time echo scale="4500; 4*a(1)" | bc -l &                
```

Ves amb compte amb les comes, no són iguals a Linux.         

#### Solució

```bash
time echo scale="4500; 4*a(1)" | bc -l &                

time echo scale="4500; 4*a(1)" | bc -l &                
```
    
    
### 7b. Ara, executa en segon pla el procés de la calculadora (gnome-calculator)     
    
<em>Pista: Des de terminal, qualsevol procés que li posis el caràcter & al final s'executarà en segon pla.</em> 

```bash
gnome-calculator &
```
    
###  7c.
Mostra  per pantalla els PID dels processos                           

```bash
jobs -l
```
    
```bash
miquelamoros@pop-os:~$ time echo scale="4500; 4*a(1)" | bc -l &
[1] 4632
miquelamoros@pop-os:~$ time echo scale="4500; 4*a(1)" | bc -l &
[2] 4635
miquelamoros@pop-os:~$ gnome-calculator &
[3] 4639
miquelamoros@pop-os:~$ jobs -l
[1]   4632 Ejecutando              time echo scale="4500; 4*a(1)" | bc -l &
[2]-  4635 Ejecutando              time echo scale="4500; 4*a(1)" | bc -l &
[3]+  4639 Ejecutando              gnome-calculator &
```

###  7d. Observa  els temps d’execució de  cadascun d'ells.                                           

p1

real        1m57,279s
user        0m55,034s
sys        0m0,072s

p2
real        1m56,910s
user        0m55,052s
sys        0m0,044s

### Enhorabona, has completat tota la pràctica :)
    
   
#### Opcional: 
    
 Si teniu curiositat:
    <a href="https://www.hostinger.es/tutoriales/bash-script-linux">Scripts Linux</a>

Video software lliure, Stallman:
    <a href="https://www.youtube.com/watch?v=8SdPLG-_wtA">Software lliure, Stallman</a>


