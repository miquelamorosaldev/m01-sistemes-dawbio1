# M01-UF1-NF1-Introducció al terminal de Linux. Comandes de redirecció ( >, >>, |, echo, /dev/null)

Aquest document és la continuació d'aquest tutorial del terminal Linux:

<a href="m01-uf1/uf1-nf2-exercicisTerminalLinux.md">uf1-nf2-exercicisTerminalLinux.md</a>

## Redirecció text sortida del terminal amb > i >>.

Per defecte el resultat de les comandes surten per la consola (sortida estàndard)

```sh
	ls -l
```

Si fiquem > després de la comanda i el nom d’un fitxer, posem la sortida en un fitxer en comptes del terminal. 
Si el fitxer ja existeix el sobreescriu.

```sh
  ls -l > fitxersCarpeta.txt
```

Fixa’t que per veure si s’ha creat bé podem usar cat:
```sh
  cat fitxersCarpeta.txt
```

Si posem >> després de la comanda i el nom d’un fitxer fa el mateix que >; excepte en el cas que el fitxer existeixi, 
que en comptes de sobreescriure posa les linies a continuació.
```sh
  ls -l >> fitxersCarpeta2.txt
```

Personalment, em va sorprendre molt descobrir aquesta comanda com a programador 😲, ja que abans vaig aprendre com fer el mateix amb Java i és més llarg.


## echo --> Mostrar text i variables.

Comanda bàsica, com el print dels llenguatges de programació.

```sh
$ echo ”Hello Linux”
```

Per a escriure un text dins d’un fitxer sense obrir-lo ho fem així:

```sh
$ echo ”Hello” > /home/miquel/practica/test1.txt
$ cat test1.txt
$ Hello
```

### Variables d'entorn

`echo` no només et permet mostrar text literal, també interpreta variables del sistema (variables d'entorn).

Per exemple, prova les comandes:

```sh
echo $USER
echo $PATH
echo $LANG
```

Alguns valors de configuració es poden obtenir amb altres comandes, no cal l'echo.
```sh
whoami
printenv
lsb_release -a
```


### Concaternació fitxers amb cat.

<em>Exercici: Creeu un nou fitxer de nom total.txt que guardi el contingut dels fitxers mint.txt i debian.txt; sense tornar a copiar el text.</em>

Escriu els fitxers sense cap editor.

**debian.txt** té el text:
Debian és un sistema operatiu lliure, creat l’any 1993 per Ian Murdock.

**mint.txt** té el text:
Mint també és un sistema operatiu lliure, basat en Ubuntu i Debian.
Mint també és un sistema operatiu multiusuari.

Solució

```sh
$ echo ”Debian és un sistema operatiu lliure, creat l’any 1993 per Ian Murdock.” > ~/practica11/debian.txt
$ echo ”Mint també és un sistema operatiu lliure, basat en Ubuntu i Debian.” > ~/practica11/mint.txt
$ echo ”Mint també és un sistema operatiu multiusuari.” >> ~/practica11/mint.txt
$ cat debian.txt mint.txt > total.txt
```

## Redirecció d'errors (/dev/null)

Per defecte, quan una comanda ha funcionat Linux no ens dona cap feedback, però si hi ha hagut algún error ens informa de perquè no ha funcionat.

Exemples típics d'operacions que donen error :
- Crear un directori que ja existeix
- Esborrar un directori que no existeix.
- Llegir un fitxer que no existeix.
- Demanar una llista d'un directori inexistent
- 
```sh
miquel@mint:~$ cat pruebas.txt
cat: pruebas: No existe el fichero o el directorio
```

Si, pel que sigui (per exemple, fem un script), no volem que ens surti aquest error per pantalla el que hem de fer és redirigir-lo a /dev/null.

### I què és això de /dev/null ? 

**/dev/null** és com un forat negre, tot el que posis en aquest directori s'esborrarà automàticament.

Per tant, si redirigeixes el missatge de la sortida d'error (que per cert, es redirigeix amb **2>**) a /dev/null ja no sortirà.

Prova-ho; i tingues en compte que entre > i / no hi ha cap espai!

```sh
miquel@mint:~$ cat pruebas.txt 2>/dev/null
```

També és útil usar la redirecció d'errors per guardar un registre dels errors en un fitxer.

```sh
cat pruebas.txt 2 >err.log
```

- https://itsfoss.com/es/redireccion-linux/

## Comandes pipe (|) per filtrar la sortida.

La comanda de canonada | s'utilitza molt per agafar la sortida d'una comanda i aplicar la següent comanda al resultat de la sortida.

Per exemple, això és molt útil si volem comptar les línies i tamany d'un fitxer sense obrir-lo amb la comanda `wc`.

```sh
cat mint.txt | wc 
```

### Exemple absurd de pipe: cowsay. 

Instal·la el programa cowsay. Aquest programa dibuixa una vaca (o qualsevol altre animal si canvies la opció corresponent, -f dragon)

```sh
$ sudo apt install cowsay
$ cowsay Hey!
 __________________
< Hey!              >
 ------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

Usa l'operador per | redirigir la comanda que llegeix contingut d'un fitxer cap a cowsay.

```sh
$ cat mint.txt | cowsay
 ________________________________________
/ Mint també és un sistema operatiu lliure \
\ , basat en Ubuntu i Debian.              /
 -----------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```

Ja has vist com cowsay ha agafat el text de la sortida i l'ha reconvertit gràcies al |.

Si et sembla divertit pots aprofundir en cowsay:

- https://opensource.com/article/18/12/linux-toy-cowsay

Pots descarregar-te una cheatsheet bàsica a:

  [Cheatsheet (extensió ODS) Introducció al terminal de Linux](./resum_comandes_linux_imprimir.ods)
