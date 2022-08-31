# Exercicis preparació Prova Escrita UF2 - NF1. Administració i configuració de la informació.

## Part 1. Cerca de fitxers i directoris en un projecte

Clona el repositori «pt15-oestoporosi-javaweb» de github a la carpeta
del teu directori d’usuari. 

Ordre:
git clone [https://gitlab.com/m15-uf1-pt15-pacientsoestoporosi/pt15-oestoporosi-javaweb.git](https://gitlab.com/m15-uf1-pt15-pacientsoestoporosi/pt15-oestoporosi-javaweb.git)

1. Cerca els fitxers amb extensió png. 

```sh
find -name ’\*.png’  
```

Resultat: No troba cap fitxer amb extensió png al directori

2. A la carpeta /web compta quants fitxers hi ha amb extensió css 

```sh
find ./web -name \*.css | wc -l 
```sh

Resultat: 6

3. Mostra els fitxers de la carpeta /src/java/ que el seu nom acabi per DAO, la seva extensió serà .java 

```sh
find ./src/java -name '\*DAO.java'  
```

Resultat: ./src/java/model/UserDAO.java ./src/java/model/PatientDAO.java

4. Cerca la ruta d’un fitxer txt que et sona que el seu nom comença per “us”.  

```sh
find . -name 'us\*.txt' 
```

Resultat: ./web/WEB-INF/files/users.txt

5. Cerca els fitxers que ocupin més de 100k i esborra’ls (Pista: el find té el paràmetre - delete) 

```sh
find . -type f -size +100k -delete
```
Comprovació: fem find . -type f -size +100k | wc -l i veiem que ara el resultat és 0.


## Part 2. Comandes de filtre d’un fitxer.

**Tenim un llistat d’alumnes dins del fitxer jugadores.txt**

Es tracta d'un fitxer separat per comes CSV, concretament tots els camps de cada fila separats per ';' 
Volem fer les següents consultes amb el terminal de Linux, abans de tractar un fitxer amb dades de pacients.

<em> Comandes més comuns: cat, grep, awk, tail/head, tr, cut, sort, < ; | </em>

1. Mostra totes les jugadores de l'arxiu de Barcelona.

```sh
awk -F ";" '$3~/Barcelona/ {print $1, $2}' jugadores.txt 
```

O bé:

```sh
cat jugadores.txt | grep Barcelona | cut -d ";" -f 1,2 
```

Resultat: 
Marta Xargay 
Aitana Bonmati 
Alexia Putellas 
Jennifer Hermoso


2. Mostra les 5 primeres jugadores per pantalla, sense mostrar la capçalera. ***PISTA:***

***Combineu el head i el tail. Per no mostrar la capçalera useu.***
***tail -n +2***

```sh
cat jugadores.txt | head -n 6 | tail -n+2 
```

3. Compta el número de jugadores l'arxiu de l’Hospitalet (LHospitalet) i de Barcelona. 

**PISTA:**
**grep -E ‘ciutat1|ciutat2’**

```sh
grep -E 'Hospitalet|Barcelona' jugadores.txt 
```

4. Posa en un fitxer anomenat jugadores\_equips.txt els registres de l'arxiu però només que continguin els camps "Nom", "1rCognom", "Ciutat” i "Edat". 
Han de sortir ordenats per Nom.
  
```sh
  cut -d ";" -f1,2,3,5 jugadores.txt | sort > jugadores_equips.txt
```
  
  O bé:
  
```sh
awk -F ";" '{print $1";"$2";"$3";"$5}' jugadores.txt | sort > jugadores\_equips.txt
```

5. Mostra tot l'arxiu en majúscules. 

**PISTA:**
**tr [lower][upper]**

```sh
cat jugadores.txt | tr [:lower:] [:upper:]
```

O bé

```sh
awk '{print toupper($0)}' jugadores.txt 
```

6. Mostra les jugadores de més de 25 anys de Barcelona. 

***PISTA:***
***awk -F ";" '{if($3==ciutat&&$5>edat)print $0}' jugadores.txt***

```sh
awk -F ";" '{if($5>25 && $3 == "Barcelona")print}' jugadores.txt 
```

Resultat: 
Alexia;Putellas;Barcelona;0034654848419;28;alexiap@fcb.cat 
Jennifer;Hermoso;Barcelona;003495431336;27;jennihermoso@fcb.cat

7. Compta el número de jugadores que tenen menys de 25 anys.

```sh
awk -F ";"  '{if($5 < 25)counter++} END{print counter}' jugadores.txt 
```
  
O bé, si eliminem la fila de la capçalera.
  
```sh
awk -F";" '{if($5<25) print $0}' jugadores.txt | wc -l
```

Resultat: 5

8. Mostra el nom i cognom de les jugadores del Barça, les que tenen un correu electrònic que acaba en ‘fcb.cat’

**PISTA: **
**grep -E accepta expressions regulars.**

```sh
cut cut -d ";" -f 1,2 jugadores.txt | grep -E *@fcb.cat 
```

```sh
awk -F ";" '{if($6 ~/fcb.cat/ && $3 ~/Barcelona/)print $1,$2}' jugadores.txt 
```

Resultat: 

Aitana Bonmati 
Alexia Putellas 
Jennifer Hermoso
