# M01-UF1-NF1-Introducció al terminal de Linux. Exercicis de comandaments bàsics.

[Teoria Bloc 1: «Directoris, rutes, i creació de fitxers»](#teoria-bloc-1-directoris-rutes-i-creació-de-fitxers)

# Bloc 0: Instal.lació programes.

Prèviament, hem aplicat comandes per a instal.lar programes per a la nostra màquina virtual.
Exemple:
```console 
sudo apt-get install gparted 
```

I per executar el programa instal.lat:
```console 
gparted
```

Descomposem les parts de la comanda, per entendre-la:

- sudo → Comanda que permet executar com a usuari admin.
Alternativa: sudo su 
- apt-get → gestor de paquets que usen distros de Linux basades en Debian: Ubuntu, PopOs...
- install → Li diem al apt que volem instal.lar (altres opcions: update, upgrade, remove, purge...)
- gparted → El nom del programa. Aquest és el que consulta particions.

### Exercici: Instal.la un programa.

Ens vindrà bé un editor: gedit i/o nano; així com utilitats com: tree, htop

Posa les 2 comandes per instal.lar i executar un dels programes.

---

## Teoria Bloc 1: «Directoris, rutes, i creació de fitxers»

<em>Comandaments: cat, cd, ls, mkdir, nano, pwd, touch </em>

Abans de començar: 

Repassem la gestió de rutes de Linux i com funcionen les comanda cd, pwd i ls.

#### Rutes dels sistemes operatius.
Ens serveix per moure'ns per les diferents carpetes del sistema.

Carpetes especials:
La carpeta arrel del sistema és root i es representa amb una barra 
```console
/
```

A diferència de Windows, que la carpeta arrel és:
C:\

O el nom de la unitat assignada.


La carpeta de l'usari és la home, per defecte se situa a:
```console
usuari1@popos22:~$ /<nom_usuari>/home
```

Tant a Linux com a Windows, per defecte la carpeta de cada usuari conté altres carpetes:
Desktop, Music, Documents, Downloads, etc...


#### Comanda cd (change directory)

Ens serveix per moure'ns per les diferents carpetes del sistema.

```console
cd <carpeta>		accedeix a la carpeta interior si existeix
cd ..			ves a la carpeta anterior (carpeta pare)
cd .			La carpeta actual.
cd ../../..		ves a 3 carpetes anteriors
cd <ruta_absoluta> 	Pots posar rutes absolutes (rutes que comencen des del root; si existeix, anirà directament a la carpeta)
cd ~			Ens dirigeix automàticament a la carpeta home de l'usuari actiu.
```

##### Exemple ruta absoluta.

```console
usuari1@popos22:~$ cd /alumne/home/Documents/dadescovid-10122021.csv
```

Exemple ruta relativa.
```console 
usuari1@popos22:~$cd Documents/
```

Per a què funcioni, dins la nostra carpeta ha d'existir una carpeta anomenada Documents.

#### Comanda pwd.
serveix per veure per pantalla a quina carpeta estem.
	
```console 
usuari1@popos22:~$ pwd
/home/usuari1/Desktop
``` 
	
#### Comanda ls
Serveix per llistar fitxers i carpetes.

```console 
ls	# Llista fitxers i carpetes		
ls -l	# Llista fitxers i carpetes, format llarg (permisos, tamany...)
```

Altres combinacions:

```console 
ls -a 
```
Llista fitxers i carpetes, incloent els ocults.

Ls admet molts paràmetres alhora:

```console
ls -la 
```
Llista fitxers i carpetes, format llarg (permisos, tamany...), incloent els ocults.
 
<strong>I la comanda més potent i completa:</strong>

```console 
ls -lisah
``` 
	
[Explicació comanda ls -lisah](https://explainshell.com/explain?cmd=ls+-lisah)
	
	
#### Curiositats del terminal: 
	
El cd també funciona a MS-DOS (terminal de Windows). 
	
Tanmateix, moltes comandes a Windows són diferents (per exemple. L’ls de Linux és dir amb Windows), i moltes d’altres ni existeixen.
Per a tenir una shell tant avançada com la de Unix i GNU/Linux cal instal.lar extensions com PowerShell; i ni tan sols així s'aconsegueixen 
tantes prestancions com amb Linux.

Una altra opció per gaudir de Linux a Windows, disponible a partir de Windows, és instal.lar l'WSL (Windows Subsystem for Linux) si som administradors/es.

---
	
## Exercicis Bloc 1 - «Directoris, rutes, i creació de fitxers»

Escriu la o les comandes necessàries per cada cas:

    1. Situa't al teu directori home.
	
    2. Mostra la ruta del directori actual.
	
    3. Llista els fitxers del directori actual.

    4. Llista els fitxers del directori actual, inclosos els ocults.
	
    5. Llista els fitxers del directori arrel, sense canviar de directori.

    6. Situa't al directori arrel, llista els fitxers i torna al teu directori home.

    7. Crea un directori al teu directori home que es digui "practica".

    8. Sense canviar de directori, crea un arxiu al directori "practica" que es digui "test1.txt".

    9. Edita "test1.txt" afegint "Línia 1" sense canviar de directori, utilitzant una ruta relativa.

    10. Edita "test1.txt" afegint "Línia 2" sense canviar de directori, utilitzant una ruta absoluta.

    11. Mostra els continguts de test1.txt sense canviar de directori i utilitzant una ruta relativa.

    12. Mostra els continguts de test1.txt sense canviar de directori i utilitzant una ruta absoluta.

    13. Situa't dintre del directori "practica" i mostra els continguts de test1.txt...
        ◦ Utilitzant una ruta relativa, amb només el nom de l'arxiu.
        ◦ Utilitzant una ruta relativa, amb el directori actual.
        ◦ Utilitzant una ruta absoluta.
          
### Solucions Bloc 1:

1	~

2	pwd

3	ls

4	ls -a, ls --al, ls -lisah

5	ls /

6	cd /, ls, cd

7	mkdir practica

8	touch practica/test1.txt

9	nano practica/test1.txt

10	nano /home/alumne/practica/test1.txt

11	cat practica/test1.txt

12	cat /home/alumne/practica/test1.txt

13	cat test1.txt, cat ./test1.txt, cat /home/alumne/practica/test1.txt



## Bloc 2: «Gestió de fitxers»

<em> Comandaments: cat, cp, ls, mkdir, mv, nano, rm. </em>

Tipus de sortida del terminal: 

per defecte les comandes surten per consola
```console
	ls -l
```

Si fiquem > després de la comanda i el nom d’un fitxer, posem la sortida en un fitxer
```console
   ls -l > fitxesCarpeta.txt
```

Si posem >> després de la comanda i el nom d’un fitxer, posem la sortida en un fitxer d’error.
```console
   ls -l >> fitxesError.txt
```

## Exercicis Bloc 2:

Escriu la o les comandes necessàries per cada cas, sense moure't del teu directori home:

    1. Fes una còpia de "test1.txt" i deixa-la al directori "practica".
	
    2. Mou "test2.txt" al teu directori home.
	
    3. Renombra "test2.txt" a "diari.txt".
	
    4. Converteix "diari.txt" en un arxiu ocult.
	
    5. Edita el diari, esborrant tot el text i escrivint "Això és el meu diari personal.".
	
    6. Mostra els continguts del diari.
	
    7. Crea un directori ocult dins de "practica" que es digui "secrets".
	
    8. Llista els fitxers del directori "practica", inclosos els ocults.
	
    9. Copia el diari al directori "secrets".
	
    10. Llista els continguts del diari dins del directori secrets.
	
    11. Esborra el diari que està al directori home.
	
    12. Fes una còpia oculta del directori "secrets" que es digui "copia-seguretat" dins de "practica".
	
    13. Llista els fitxers del directori "copia-seguretat", inclosos els ocults.


### Solucions Exercicis Bloc 2:

```bash
1	cp practica/test1.txt practica/test2.txt

2	mv practica/test2.txt ~

3	mv test2.txt diari.txt

4	mv diari.txt .diari.txt

5	nano .diari.txt

6	cat .diari.txt

7	mkdir practica/.secrets

8	ls -a practica

9	cp .diari.txt practica/.secrets

10	cat practica/.secrets/.diari.txt

11	rm .diari.txt

12	cp -r practica/.secrets/ practica/.copia-seguritat

13	ls -a practica/.copia-seguritat/
```


