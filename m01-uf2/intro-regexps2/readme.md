# Introducció a les expressions regulars.

Imaginem que volem cercar si hi ha un tros de cadena en una seqüència molt llarga.

Podem usar mètodes de Python (in), però en ocasions ens ofereixen molta més flexibilitat **les expressions regulars.**

Les expressions regulars són un llenguatge per expressar patrons. És a dir, una estructura que es repeteix entre 0 i n vegades.

<strong><em>En altres paraules, serveixen per buscar coincidències (matches) en un text.</em></strong>

Per exemple, si un text té format de DNI/NIE, email, etc...

Per raons d'eficiència es prefereix usar regexp que programar-les nosaltres, és un llenguatge de baix nivell que s'ha de compilar, com el C. 

### Recursos practicar regexp.

- Reptes per aprendre expressions regulars (teoria). 
  https://regexone.com/
- Validador d'expressions regulars (debug)
  https://regex101.com/


# Teoria Tipus patrons regexp.

Els patrons s'escriuen usant els següents caràcters.

## 1. Literals (una lletra)

 a L, Z, J, 9, 2, #, % => Qualsevol caràcter no especial

Per exemple, quantes vegades apareix un patró 'A' a la cadena 'GATAGATA'

Resultat: Apareix 4 vegades.

##2. Caràcters especials. 

### 2.1. Backslash "\"

Fa que el següent càracter és especial (si no ho és).
Fa que el següent càracter no sigui especial (si ho és).

**Exemples** 
```python
    \n (newline)
    \t (tab)
    \s (whitespace)
    \b (boundary, un link)
    \. (punt normal, colon, dot)
    \w (carácter de palabra)
    \d dígito de un número
    \D Un caracter que no és un dígit.Una majúscula significa negació.
    \W Tots menys els alfanumèrics: És a dir, símbols (inclou espais)
```

Per a fer la \ com a literal, hem de fer '\\'

<em>En otras palabras; es como la varita de Harry Potter, le da poderes al literal del lado, convierte un literal a carácter especial y al revés.</em>

#### Exemple:

Patró:      \d

Text:       hola123

Resultat:   3 coincidencies


### 2.2. Dot "."

El punt és un comodí, significa qualsevol caràcter, però només un.

Excepció: No coincideix amb el '\n', el salt de linea (a no ser que activis la opció single-line)

**Exemple: Agafa 3 caracters qualsevol** 

![[dotexemple1.png]](./img/dotexemple1.png "dotexemple1.png")

Amb el backslash interpreta un punt com a literal

![[dotexemple2.png]](./img/dotexemple2.png "dotexemple2.png")

**Exemples:**

Si el fessim en Python, usariem aquestes variables:

txt = "G**AT****AG****AT****AA**CCGG**AT****AG**"

rgx = "A."

matches = ["AT","AG","AT","AA","AT","AG"]

Descartem la G, la T

### 2.3.Character classes

Una "char class" ens permet dir que un caràcter només pot ser una de les opcions que hi ha dins. 
Es representa amb els símbols [], square brackets. 

**Exemples** 

Rex. "Hola guap[ao]"

Txt. "Hola guapa"      ✅ MATCH 

Txt. "Hola guapo"      ✅ MATCH 

Txt. "Hola guapi"      ❌ NOT MATCH 


**Els [], square brackets, són caràcters especials. Serveixen per donar opcionalitat ** 

1. Hola a tod[ao]s <= Una clase de 2 lletres hi haurà coincidència tant amb la 'a' i la 'o'

2. Parsejar capçaleres d'un fitxer html (h1,h2,h3,h4,h5,h6)

      <h\d> => tots els numeros inclosos el 0
      
      <h[123456]> => tots excepte el 7,8,9,0.
      
      [AGCT] => Ens assegurem que el text només conté caràcters d'ADN.

[exemple1exp]


### 2.4. guió - (DASH)

Un altre caràcter que es torna especial es el guió - (DASH). Té 2 funcions:

  1. Quant esta entre dos caràcters, crea un rang.
  
    [0-9] => Tots els dígits entre 0 i 9
    
              [a-z] => El alfabet amb minúscules, anglès (ASCII,UTF-8)
              
              [a-zA-Z0-9] => Qualsevol caràcter alfanumèric (\w)
              
  2. Quan es troba al principi o al final de la classe, és un literal normal.

Aquest algoritme només aplica als caràcters ASCII, 127 primers caràcters (les ñ i altres símbols no).

**Exemples**

Rex: [-ab] 

Txt: 18 year-old

![[express2minus.png]](./img/express2minus.png "express2minus.png")
Busca totes les lletres.

![[express2majus.png]](./img/express2majus.png "express2majus.png")
Busca els espais.

![[exemple1exp.png]](./img/exemple1exp.png "exemple1exp.png")

### 2.5.Caràcter ^ (CARET o NEGACIÓ)

Dins d'una clase hi ha un caràcter que es torna especial segons la seva posició dins la clase. Es el caràcter ^ (CARET)

1. Quan és el primer caràcter dins de la classe, nega tota la classe. 

      *exemple* [^S] => Busca paraules amb singular  Qualsevol caràcter que no sigui S, [^aeiou] => Buscaria consonants

2. Quan no és el primer dins la clase, és un literal:

     [a^eiou] => Busca totes les paraules y el caret

**Exemples**

![[rgxcaret1.png]](./img/rgxcaret1.png "rgxcaret1.png")

Retorna tot el que no són lletres. 

![[exemple1exp.png]](./img/exemple1exp.png "exemple1exp.png")

Troba les consonants i altres caràcters que no són vocals (els espais)

### 2.6.Cuantificadors 

Amb aquestex expressions podem detectar moltes vegades un mateix caràcter.

Si s'escriu entre {} indica quantes repeticions hi ha del caràcter anterior.

A nivell de rendiment, tenir en compte que són GREEDY (el contrari de LAZY); per això millor definir bé l'intèrval. 

Sintaxis:
{ num_min , (opt)num_max }

**Exemples**

Rgx:    "a{5}"
Txt:    "aaaaa"

![[rgx_quant1.png]](./img/rgx_quant1.png "rgx_quant1.png")

Cerca una cadena d'ADN que contingui exactament el patró AAA.

- Si té AAAA selecciona les 3 primeres

- Si té menys de 3 A seguides no compta.


{n,m} entre n i m repeticions. Per defecte és GREEDY(ambiciós). Intenta sempre agafar el màxim (consumeix el màxim de l'entrada).

![[cuantificadorsexample1.png]](./img/cuantificadorsexample1.png "cuantificadorsexample1.png")

{n,} entre n i "infinit" repeticions. {,m} com a mínim 0 i màxim m.

![[cuantificadorsexample2.png]](./img/cuantificadorsexample2.png "cuantificadorsexample2.png")

![[cuantificadorsexample3.png]](./img/cuantificadorsexample3.png "cuantificadorsexample3.png")

**2.7. Abreviadors Quantificadors** 

Els quantificadors els representem 3 abreviacions comuns:

```
? {0,1} (interrogant) de 0 a 1, és a dir; opcional.

* {0,} (star or asterisc) de 0 a infinit.

+ {1,} (plus) exigeix que almenys hi hagi 1, si podem usar el + millor que el *
```

**Exemples**

<em>La abreviatura de l'asterisc és la més coneguda amb diferència; sobretot a l'hora de cercar noms de fitxers.
L'únic que coneix molta gent.
```bash
*.png
Pt[1-9]*
```
</em>

```bash
a? 
aaaaa
5 matches
```

```bash
a*
aaaaa
1 match
```

```bash
*
<string_buit>
1 match
```

### 2.8. Groups ( )

Els grups de captura són una **agrupació de caràcters, s'escriu entre ()**

Tenen la següent funcionalitat. 
1. Capturar i després revisar una coincidència. 
2. Grups de cuantificadors. 
3. Unions de grups de caràcters ( ab | cd) pipe dins d'un grup = OR

Sintaxi:

**Exemple**

**Rgx:**
(ab|aza)

**Txt:**
abbaazab

**Matches** 

Número de matches:
3

Quins matches són?
["ab","aza","ab"]

**Exemple**

Vull provar una mutació d'un tros de cadena d'ADN; per això va molt bé.

**Rgx:**
(GCC){1,}

**Txt:**
AUG(CGA){0,10}GCC

**Núm Matches ? **
1

![[expressionsexample2.png]](./img/expressionsexample2.png "expressionsexample2.png")

![[especialscharactersexample3.png]](./img/especialscharactersexample3.png "especialscharactersexample3.png")


### 2.9 Anchors

Son caràcters especials que no consumeixen entrada i serveixen per indicar una posició.

    - ^ CARET : Inici de linea (text).
  
    - $ DOLLAR : Fí de linea (text).
  
    - \b: Principi a final de paraula \s\w o \w\s

Un paràmetre controla si la llibreria treballa linea a linea o tot el text de cop.

Quant es treballa linea a linea, no es té en compte el salt de línea "\n".

Quant es treballa linea a linea, no es té en compte el salt de línea "\n".

![[anchorsexample1.png]](./img/anchorsexample1.png "anchorsexample1.png")

![[anchorexample2.png]](./img/anchorexample2.png "anchorexample2.png")

**EXEMPLE, LECTURA FASTA**

**Rgx:**
^>

**Txt:**
>Fasta demo 1
AGCGATCGT

**Núm Matches ? **
1


Si es treballa amb multiline, sol troba una ocurrencia

```
Flags Paràmetres de la llibreria de regexps.

^, $ marca el principi/fi de la linea text (opció Multiline).

. (dot) coincideix amb el \n també (o no).
```

<hr/>
<hr/>


## Voleu jugar i aprendre ? Regex Play.

T'ajuda a resoldre problemes de la vida real: filtrar MAC's, adreces ftp, etc...

Abans de jugar et fa resoldre una petita enquesta.

![[regular_expressions.png]](./img/regular_expressions.png "regular_expressions.png")
Source: [xkcd](https://xkcd.com/208/)

http://play.inginf.units.it/#/level/1


<details>
  <summary>Si teniu dubtes, cliqueu per veure les solucions</summary>
  
Ex2.

### ([0-9a-f][0-9a-f]:?){6}

Per seleccionar les adreces MAC, optem per seleccionar 2 digits hexadecimals.
[0-9a-f]{2}

La MAC consta de 5 grups de 2 hexadecimals separats


Ex3.

### [a-z].*(FreeBSD.org/pub/FreeBSD/)

### ftp://[^ ]{1,}
### ftp://[\S]{1,}

ftp seguit de 1 o més caràcters que no siguin un espai [^ ]

Ex4. 

### .{1,}?\$

Això el que fa és trobar els símbols $

Per aconseguir que el comportament de la regex .{1,} no sigui greedy i sigui lazy, posem un interrogant al costat. Això ho fem per a què pari just quan es compleix la condició i que no segueixi; la qual cosa en aquest exercici fa que la solució sigui més eficent.

Eviteu els quantificadors de 0 a N com el * i {0,} si és possible.

Un altre exemple:
https://stackoverflow.com/questions/2301285/what-do-lazy-and-greedy-mean-in-the-context-of-regular-expressions

Ex5. 

Possibles solucions

#### (([0-2]?[0-9]{2})\.){3}([0-2]?[0-9]{2})

#### \d+\.\d+\.\d+\d\.+\d+

#### (\d{1,3}\.)\d

Ex6.

#### href=(['"]).+?\1  = href=(['"]).{1,}?\1

L'href l'obrim amb comes simples o dobles. 
Després, capturarem qualsevol caràcter de forma lazy (sinó continuaria buscant i no seria correcte)
fins arribar de nou a trobar ' o " (\1) que tanca l'href.

Ex7.

### http://[a-zA-Z0-9/_=?;.~&:-]*[a-zA-Z0-9/]

### (http[^\s\<\>]{1,}[^\.\<\>\s=])
### (http:\S{1,})(\d|\w|/)

La segona i tercera segueixen la estratègia negativa.

### http://[^ >]+[\w/]

Ex8. 

### (<h\d\s?).+(</h\d>)

### <h.*>
### <h.*
### <h\d.*>

Com funcionen aquestes tan curtes ?

. -> Agafa qualsevol caràcter excepte salts de línia

Versió optimitzada amb back references '\1' i lazy quantifier (més eficient) '.*?'

### <(h\d).*?</\1>


Ex9.

### \(?\d{3}[.)/]?[-\s]?\d{3}[.-]\d{4}

General, la més interessant.

### \(734\) \d{3}[\s\W]\d{3,4}|734.\d{3}.\d{3,4}|800.\d{3}-\d{3,4}

Molt específica.

</details>

## Estratègies per resoldre problemes regex.

1. Constructiva positiva
   
Posant els literals i caràcters especials que han d'encaixar. 

2. Construcció negativa.
   
Dient el que no té que encaixar (amb character class)

3. Destructiva

Consisteix en eliminar els trossos de text que no ens interessen.

Per exemple, eliminar la primera línia d'un fitxer .fasta

4. Agrupació

Usar operadors d'agrupació ( ) com hem fet en algunes solucions.

<hr/>
<hr/>


### Finalment, regla d'or:

Mai utilitzeu regex per parsejar un llenguatge com HTML (ni Java ni PHP ni JS...).
No entenen els metacaràcters com els <>,{}, etc...
