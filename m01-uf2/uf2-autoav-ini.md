# UF2 - NF1 - AUTOAVALUACIÓ INICIAL.

## Objectius.

Aplicar les comandes més comuns del terminal de Linux i de Windows per a consultar i transformar fitxers i carpetes.

## Part 1. Comandes bàsiques. Directoris i fitxers.

Escriu la comanda o comandes del terminal Linux per a:

<em> Comandes usades: pwd, cd, ls, cp, mv, rm, rm -r, operadors: >, >> |. </em>

1.  Mira a quin directori ens trobem.

    ```sh
    pwd
    ```

2.  Ves al directori arrel.

    ```sh
    cd /
    ```

3.  Crea, amb una sola ordre, un directori anomenat "uf2-a00" dins de
    l\'home del teu directori usuari.

    ```sh
    mkdir /home/user/uf2-a00
    ```

4.  Llista el contingut del directori, incloent fitxers i carpetes
    ocultes, en format llarg.

    ```sh 
    ls -la
    ```

5.  Mostra els fitxers del directori on et trobes, amb extensió pdf.

    ```sh
    ls -l \*.pdf
	```

    o

    ```sh
    find -name \*.pdf
    ```
	<em>Requisit: Tenir algun fitxer PDF al directori on cerqueu.</em>

6.  Posa en un fitxer que contingui amb la llista del contingut del
    directori, en format llarg, que es digui «ls-l-2022.txt»

```sh
    ls -l \> ls-l-2022.txt
```

7.  Visualitza el contingut del fitxer de text, sense obrir-lo.

```sh
    cat ls-l-2022.txt
```

8.  Mostra les 8 últimes línies, sense obrir el fitxer.

```sh
    tail -8 ls-l-2022.txt
```

9.  Fes una còpia del fitxer «ls-l-2022-copia.txt»

```sh
    cp ls-l-2022.txt ls-l-2022-copia.txt
```

10. Esborra el fitxer original. Ara, renombra el fitxer còpia per a què es digui «ls-l-m01-2022.txt»

```sh
    rm ls-l-2022.txt
```

```sh
    mv ls-l-2022-copia.txt ls-l-m01-2022.txt
```

11. Crea un fitxer i escriu una línia (pots usar un editor com gedit o nano), amb el teu nom i congom/s.

```sh
    gedit ls-l-2022.txt
```
<em>Escrius la linia a l'editor gedit i guardes</em>


12. Ves al directori pare de l\'actual.

```sh
    cd ..
```

13. cp Fes una còpia de la carpeta «uf2-a00-copia»

```sh
    cp -r uf2-a00 uf2-a00-copia
```

<em> S'ha de ficar -r recursiu per a carpetes no buides.</em>

14. Esborra la carpeta còpia.

```sh
rm -r uf2-a00-copia
```

<em> S'ha de ficar -r (recursiu) per a carpetes no buides.</em>


## Part 2. Cerca d'informació en fitxers.

Crea un arxiu de nom "**empleats-autoini.csv**" que contingui les següents dades:

```csv
Nom;Cognom;Ciutat;Telèfon;Edat;
Ismael;Caballero;Valladolid;7986821;21
María; López; Córdoba; 4568756;23
Sonia; Aguilar; Valladolid; 1239083;45
Juan; Ramírez; Córdoba; 7643434;19
Laura ;Díaz; Córdoba; 4221336;21
Enrique; Ortiz; Barcelona; 3423444;37
Mónica; Carrasco; Madrid; 1234123;22
Cristina; Reyes; Madrid; 3344334;39
Juan Antonio;Cachero;Hospitalet;932461165;25
Laura;Zelaya;Hospitalet;932461535;25
Silvia;Clos;Barcelona;932461165;25
```

Fixa't que el format csv permet obrir el fitxer tant en un editor de
text com gedit o notepad++, com en Libre Office Calc. 
En el nostre cas treballarem amb ell des de la carpeta «uf2-a00» i amb el terminal.

Pots provar les comandes que et posem solucionades d'exemple per verificar el funcionament.

#### Indica les ordres necessaris per realitzar les següents accions en un sistema Linux:

**Comandes usades: cat, cut, grep, head, tail, wc,** 

***cat** → mostra per pantalla un fitxer sense llegir-lo*

***operador \>** → et permet guardar la sortida de comandes en un
fitxer.*

***operador \|** → anomenat pipe o filtre, concatena el text de la
sortida d'una comanda*

***head, tail** → mostren les primeres / últimes línies*

***wc -l** → compta les línies d'un text ( també es poden comptar -w
-c)*

<em><strong>Exemple: Visualitza les 2 últimes línies del document. </em></strong>

```sh
tail -2 empleats-autoini-autoini.csv
```

Visualitza només la columna corresponent als camps"Nom" i "Cognom".

```sh
cat empleats-autoini.csv \| cut -d \";\" -f 1,2
```

Compta els empleats-autoini que viuen Hospitalet, i mostra'ls ordenats per edat.

```sh
grep Hospitalet empleats-autoini.csv \| sort -nr -k 5 -t \";\"
```

1.  Visualitza les 4 primeres línies del document.

```sh
    head -4 empleats-autoini.csv
```

2.  Mostra els empleats-autoini que viuen a Córdoba

```sh
    cat empleats-autoini.csv \| grep Córdoba
```

3.  Compta els empleats-autoini que viuen a Hospitalet

```sh
    cat empleats-autoini.csv \| grep Hospitalet \| wc -l
```

4.  Mostra les línies que comencen per la lletra «J»

```sh
    cat empleats-autoini.csv \| grep \^J
```

5.  Visualitza només la columna corresponent als camps"Cognom" i "Telèfon"

```sh
    cat empleats-autoini.csv \| cut -d \";\" -f 2,3
```

6.  Mostra el nom i cognom dels empleats-autoini amb *edat 21 anys*

```sh
    *cat empleats-autoini.csv \| grep 21 \| cut -d \";\" -f 1,2*
```

<em>El grep selecciona només les files que contenen 21. Després, amb el cut hem seleccionat les 2 primers columnes/camps (nom, cognom) per tal que no es vegi l'edat.</em>

7.  *Guarda en un fitxer la llista d'empleats-autoini d'Hospitalet.*

```sh
    cat empleats-autoini.csv \| grep Hospitalet \> empleats-autoini-hospitalet.csv
```

    
En aquests NF veurem més comandes com aquestes.

També, la creació de links, comandes de cerca de fitxers i directoris eficients (molt més que l'explorador) i algún script.

Benvingudes i benvinguts!
