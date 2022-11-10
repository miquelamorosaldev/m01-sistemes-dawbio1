# Introducció a la gestió de processos a Linux

#### Coneixements previs:
<a href="">Per seguir aquest tema primer has d'haver fet una introducció a les comandes bàsiques del terminal del link</a>

#### Referències:
<a href="https://www.digitalocean.com/community/tutorials/how-to-use-ps-kill-and-nice-to-manage-processes-in-linux">How to manage processes in Linux</a>


### Definició de procés: Un procés és un programa en execució. 

En general un procés pot tenir aquests estats: 
* ready (preparat), 
* run(execució), 
* stop(aturat), 
* terminated (finalitzat).

Hi ha altres estats menys comuns, que succeeixen quan falta memòria RAM o CPU: zombie (falta CPU), swapped (falta memòria RAM). 

## Comandes gestió de processos. 

### top

Comanda per a veure en pantalla tots els processos a la CPU, i la memòria que ocupen

És l'equivalent al Admin. de tasques del Windows).

### ps

Mostra la llista de processos que hi ha.

#### Combinacions importants:

Llista processos en estat d'execució:
```console
ps -ef
```

Mostra informació d'un procés concret, de tots els terminals i usuaris.

```console
ps -aux | grep firefox
```

| grep serveix per filtrar a on apareix la paraula que indiquem (pex firefox). 

### kill 

Serveix per a forçar la finalització de processos.

```console
kill -9 <PID_PROCES>
```

## Execució de processos propis.

### En primer pla, posem el nom del programa:

```console
firefox
```

Veiem que ja no podem fer res al terminal fins que no el tanquem.


### Per arrencar en segon pla, posem el nom del programa seguit del caràcter &:

```console
firefox &
```

Podem seguir usant el terminal si el procés està en segon pla.


Altres programes que poden ser processos són:
* gedit
* gnome-calculator
* sleep
* libreoffice


### jobs 

Serveix per mostrar l'estat dels processos del terminal i el seu PID.

```console
jobs -l
```

### bg i fg

bg, envia un procés a segon pla, amb l'id que indica al comanda jobs.
```console
bg %1
```

fg funciona igual que bg, i envia un procés a primer pla, amb l'id que indica al comanda jobs.


### Ctrl+C

Mata (finalitza) el procés. 

### Ctrl+Z

Para el procés. 


### Exercicis

Escriu la o les comandes necessàries per cada cas:

<strong>Comandaments: bg, fg, jobs, kill, ps, top, &, Ctrl+C, Ctrl+Z</strong>

1.	Mostra els processos corrent al terminal actual.

2.	Mostra els processos corrent al sistema a tots els terminals i usuaris.

3.	Mostra els processos corrent al sistema dinàmicament.

4.	Llença un programa gràfic (gedit, xlogo, etc.) al foreground del terminal.

5.	Mata el procès des del terminal.

6.	Llença un programa gràfic (gedit, xlogo, etc.).

7.	Llença un programa gràfic (gedit, xlogo, etc.) al background del terminal.

8.	Mostra el PID del programa que està corrent al background.

9.	Mata el procés utilitzant el seu PID.

10.	Llença un programa gràfic (gedit, xlogo, etc.) al background del terminal.

11.	Mostra el jobspec del procès que està corrent al background.

12.	Fes que el procés vagi al foreground del terminal.

13.	Pausa el procés i mira com es comporta la finestra.

14.	Fes que el procés torni a còrrer al foreground.

15.	Torna a pausar el pocés i fes que torni a córrer al background.



### Solucions Exercicis

```console
1	ps
2	ps aux
3	top
4	libreoffice
5	Cotrol + c (parar el proceso)
6	geany
7	Geany & (puedes continuar con la terminal)
8	ps
9	kill -9 5405
10	geany &
11	Jobs (muestra los procesos que se han ejecutado en el terminal)
12	fg %1 (pondremos el numero que esta en el segundo plano Control+z)
13	Control + z
14	fg %1
15	bg %1 (Si un programa se para, se puede continuar con el bg%1 para que siga corriendo)
```
