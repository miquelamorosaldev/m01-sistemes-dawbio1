## Gestió d’usuaris local amb Linux.

Administración básica del Sistema Operatiu.

### Teoria.

<a href="https://github.com/miquelamorosaldev/m01-sistemes-dawbio-2122/blob/main/m01-uf1/practica32/Resum%20Comandes%20Administraci%C3%B3%20b%C3%A0sica%20dusuaris%20en%20Linux.pdf">Resum Comandes Administració bàsica dusuaris en Linux.pdf</a>

### Exercicis.

Abans de començar, recomanem que usis la comanda per a entrar el terminal com a usuari root (administrador):

```sh
sudo su
```

Fes una còpia de seguretat dels 4 fitxers que gestionen els comptes: passwd,group,gshadow,shadow

```sh
cp /etc/gshadow grups-pass.txt
cp /etc/group grups.txt
cp /etc/shadow usuaries-pass.txt
cp /etc/passwd usuaries.txt
```

Comprovem que els fitxers de còpia s'han creat correctament.
```sh
root@pop-os:/home/miquelamoros# ls -la us*
-rw-r----- 1 root root 1483 nov 17 17:36 usuaries-pass.txt
-rw-r--r-- 1 root root 2769 nov 17 17:35 usuaries.txt
```

Crea la usuaria rosalind amb la comanda adduser (la interactiva)

```sh
root@pop-os:/home/miquelamoros# adduser rosalind
Añadiendo el usuario `rosalind' ...
Añadiendo el nuevo grupo `rosalind' (1002) ...
Añadiendo el nuevo usuario `rosalind' (1002) con grupo `rosalind' ...
Creando el directorio personal `/home/rosalind' ...
Copiando los ficheros desde `/etc/skel' ...
Nueva contraseña:
```

Crea els usuaris james i francis amb la comanda useradd (no interactivo)
```sh
useradd francis
useradd james
```

Comprovació:
```sh
tail -4 /etc/passwd
```

Modifica l’usuaris francis, amb la shell de bash i que se li caduqui el compte el dia 18 de novembre 2022.
```sh
usermod francis -s /bin/bash -e 2022-11-18
```

Crea el grup el grup plagiarism
```sh
groupadd plagiarism
```

Comprovació:
```sh
tail -4 /etc/group
```

Afegeix als usuaris james i francis al grup plagiarism.
```sh
usermod francis -g plagiarism
usermod james -g plagiarism
```

Fes que la usuaria rosalind guanyi privilegis d’administrador (que pertanyi al grup sudo).
```sh
usermod rosalind -aG sudo
```

Comprova tot el que has fet visualitzant les tres darreres línies del fitxer d'usuaris i del fitxer de grups del sistema.
```sh
cat /etc/group | grep sudo
tail -5 /etc/passwd
miquelamoros:x:1000:1000:Miquel Angel Amoros:/home/miquelamoros:/bin/bash
vboxadd:x:999:1::/var/run/vboxadd:/bin/false
rosalind:x:1002:27:Rosalind Franklin,51,,:/home/rosalind:/bin/bash
james:x:1003:1005::/home/james:/bin/sh
francis:x:1004:1005::/home/francis:/bin/bash
```

En quin fitxer es gestionen les contrassenyes ? Estan encriptades ?

/etc/shadow
Sí, segurament amb SHA1. Encripta ràpid però és molt dificil de desencriptar.

Com podem canviar la nostra contrassenya ? 
```sh
passwd rosalind
```

Com podem canviar la data de caducitat d’una contrassenya d’un usuari, per a què caduqui als 90 dies després de la data d’avui, i que avisi 7 dies abans ? 
Pista: chage -M

```sh
sudo chage francis -M 90 -W 7
```

Resultat:
```sh
cat /etc/shadow | grep francis
francis:!:19313:0:99999:7::19314:
```

### Referències:
https://www.linuxtotal.com.mx/index.php?cont=info_admon_008
