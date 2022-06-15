# Introducció al terminal de Linux. Exercicis de comandaments bàsics.

## Bloc 0: Instal.lació programes.

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

## Bloc 1: «Directoris, rutes, i creació de fitxers»
<em>Comandaments: cat, cd, ls, mkdir, nano, pwd, touch </em>

Abans de començar: 

Provem com funcionen les comanda cd, pwd i ls.

### Comanda cd
Ens serveix per moure'ns per les diferents carpetes del sistema.

Carpetes especials:
La carpeta arrel del sistema és root i es representa amb una barra 
````console
/
```

A diferència 

La carpeta de l'usari és la home, per defecte se situa a:
````console
/<nom_usuari>/home
```

Dintre

cd <carpeta>		accedeix a la carpeta interior si existeix
cd ..			ves a la carpeta anterior (carpeta pare)
cd .			La carpeta actual.
cd ../../..		ves a 3 carpetes anteriors
cd <ruta_absoluta> 	Pots posar rutes absolutes (rutes que comencen des del root; si existeix, anirà directament a la carpeta)

Exemple ruta absoluta.

```console 
  cd /alumne/home/Documents/dadescovid-10122021.csv
```  

Exemple ruta relativa.
```console 
cd Documents/dadescovid-10122021.csv
```  

## Comanda ls
Serveix per llistar fitxers i carpetes.

ls			Llista fitxers i carpetes
ls -l			Llista fitxers i carpetes, format llarg (permisos, tamany...)

Altres combinacions:
ls -a  Llista fitxers i carpetes, incloent els ocults.

Ls admet molts paràmetres alhora:

ls -la  Llista fitxers i carpetes, format llarg (permisos, tamany...), incloent els ocults.

Curiositats del terminal: 
El cd també funciona a MS-DOS (terminal de Windows). 
Tanmateix, moltes comandes Windows són diferents (per exemple. L’ls de Linux és dir amb Windows), i moltes d’altres ni existeixen (cal instal.lar extensions com PowerShell, i ni així es consegueix tantes prestancions com amb la  algunes comandes canvien

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
          

## Exercici 2: «Gestió de fitxers»

Comandaments: cat, cp, ls, mkdir, mv, nano, rm.

Tipus de sortida del terminal: 
per defecte les comandes surten per consola
```console
	ls -l
```

Si fiquem > després de la comanda i el nom d’un fitxer, posem la sortida en un fitxer
	ls -l > fitxesCarpeta.txt

Si posem >> després de la comanda i el nom d’un fitxer, posem la sortida en un fitxer d’error.
	ls -l >> fitxesError.txt

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

