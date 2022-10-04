# M01-UF1-NF1-Classificació dels sistemes operatius

## Segons la utilització dels recursos

- **Monoprogramat:** (o monotasca) només pot executar una tasca.
Fins que no acabi una, no pot començar una altra.
- **Multiprogramat:** (o multitasca) poden executar més d'una tasca simultàniament.

La 4a generació d'ordinadors ja permetia executar moltes tasques en paral.lel mitjançant la memòria RAM i un sistema operatiu
que permeti planificar l'ordre d'execució de les tasques.

<em>Exemples Multiprogramat:</em> Unix, totes les versions de Windows i Linux
<em>Exemples Monoprogramat:</em> L'únic conegut és l'MSDOS, el terminal de Microsoft.
  
## Segons el nombre de processadors que pot gestionar.

- **Monoprocessador:** encara que la màquina disposi de més d'un processador (o un processador amb més d'un nucli), només pot fer treballar un.
- **Multiprocessador:** si la màquina disposa de més d'un processador (o processadors amb més d'un nucli), és capaç de repartir les tasques entre tots.

Si la CPU disposa de més d'un nucli, les tasques es poden executar realment de forma simultània.
Si només es disposa d'un nucli o el nombre de tasques és més elevat, el sistema reparteix el temps de CPU entre les diferents tasques, 
  donant la sensació que s'estan executant de forma simultània.
  
Tant els processadors d'Intel com els d'AMD avui en dia tenen 2 o 4 nuclis; inclús els més recents en tenen molts més.
  
[Història i evolució de les CPU's](https://www.onubaelectronica.es/evolucion-de-la-cpu/)

Els primers SO multitasca eren monoprocessador (models 286,386,486,Pentium...) fins que les CPU van evolucionar 
  
##  Segons el nombre d'usuaris
- **Monousuari:** només poden atendre un usuari.
Aquest usuari té accés a tots els recursos de la màquina. No hi ha comptes d'usuaris.
- **Multiusuari:** més d'un usuari pot utilitzar els recursos de la màquina.
Cada usuari té el seu compte i les carpetes on pot accedir.
A Windows: **C:\Users**
A Linux **/home**
  
Unix (sistema operatiu predecessor de Linux, molt usat els anys 80 i 90) ja era multiusuari. 
Windows va trigar molt més temps en ser multiusuari, fins al Windows NT (una mica abans de l'XP) era monousuari. 
 
En funció del tipus d'usuari, es poden configurar diferents privilegis.

## Segons la propietat
- **Sistemes propietaris:** tenen limitacions en el dret d'ús, còpia, distribució, modificació i no es pot disposar del codi font: Windows, macOS ...
- **Sistemes lliures:** es poden utilitzar sense limitacions, es poden copiar, distribuir o modificar lliurament: GNU/Linux.

## Segons si són centralitzats o distribuïts.

- **Sistemes centralitzats o monolloc:** El sistema operatiu només pot accedir al hardware de l'ordinador, no pot compartir recursos: RAM, disc... amb altres.
Són els primers sistemes que veurem, i els que més s'usen.
<em> Windows 7/8/10/11 , Ubuntu 18/20/22, MAC OS, etc... </em>

- **Sistemes en xarxa o distribuïts:** Diversos ordinadors comparteixen recursos: discos durs, memòria RAM... Cada sistema té la seva versió en xarxa. 
<em> Ubuntu Server, Red Hat EL Server, Windows NT (antic), Windows Server 2019 </em>


## Segons el tipus d'aplicacions
- **De propòsit general:** poden executar qualsevol tipus d'aplicació i en diferents tipus de màquines.

- **De propòsit específic:** només es poden executar en un tipus de dispositiu o només per a una tasca determinada: el sistema operatiu 
  d'un rellotge intel·ligent, un sistema de control dels semàfors, lector de llibres, videoconsoles ...
  
- **Supercomputador** o computador d'alt rendiment. Tenen capacitats de càlcul i rendiment molt superiors als ordinadors comuns.
Solen tenir una arquitectura distribuïda en diverses màquines i/o CPU's.
Ideals per a realitzar operacions complexes i llargues, que requereixen molts processadors, com la secuenciació de l'ADN,
càlculs científics i alguns programes d'Intel.ligència Artificial.
<em> Tenim la sort de tenir aprop nostre el Marenostrum, un dels supercomputadors més potents i eficients del món, gestionat pel BSC.</em>

[Web Oficial Marenostrum](https://www.bsc.es/es/marenostrum/marenostrum)

  
##  Segons la arquitectura de la CPU.
- **64 bits ->** Des de l'entrada als 2000, tots els sistemes operatius han aprofitat aquesta arquitectura.  
- **32 bits ->** Arquitectura que encara s'usa en ordinadors que no tenen aquesta arquitectura de processador (entrada 2000 o anteriors)
- **16 bits ->** Ordinadors molt vells (sense Linux ni Windows ni MacOS, MS-DOS.)
