# Components del Sistema Informàtic.

## Definicions.

<strong>Dades.-</strong> Es la unitat mínima que forma part de qualsevol informació. Les dades per si mateixes no ens serveixen per gaire.

<strong>Informació.-</strong> Es el conjunt de dades, figures o paraules estructurades de tal manera que tinguin sentit per a una persona. 

<strong>Informàtica.-</strong> Es l’acrònim de “Informació Automàtica”. Podem definir <em>la informàtica com la ciència que estudia el tractament automàtic i racional de la informació.</em>

<strong>Bioinformàtica.-</strong> La bioinformàtica és l'aplicació de tecnologies computacionals i l'estadística a la gestió i anàlisi de dades biològiques; amb la intenció d'estudiar,
analitzar i processar informació genètica, molecular i clínica per generar nou coneixement, noves eines diagnòstiques i noves teràpies.

<strong>Programa.-</strong> És una seqüència d’instruccions accions definides a priori que poden ser executades per part d’un procesador que tenen la finalitat
d'oferir als/les usuaris/es una funcionalitat: tractament d'informació, edició de documents, navegador d'Internet, joc d'entreteniment ...

<strong>Procés.-</strong> Es cada una de les tasques realitzades per un ordinador. També es considera com procés cadascuna de les instàncies d’un programa. 
El procés es qui s’encarrega de ordenar i classificar les dades per donar-nos una informació útil.

<strong>Ordinador.-</strong> Dispositiu físic construït a base de components electrònics i electromecànics situats dins d’una carcassa, que ha estat dissenyat per a 
tractar instruccions concretes, les quals prenen la forma de programes. Es qui executa el tractament automàtic de la informació. La paraula Ordinador, deriva de la paraula francesa "Ordinateur”, En molts països hispano-parlants de cultura tècnica
més influenciada por USA, s’utilitza el terme "computadora"; més semblant al seu equivalent anglès "Computer".
<em>Exemples més comuns:</em> ordinador de sobretaula (desktop), ordinador portàtil (laptop), telèfon mòbil que incorpori un SO 
(smartphone, els SO més comuns són Android, iOS), tablet. 

<strong>Sistema Informàtic</strong> és el conjunt d'elements necessaris per a la realització i l’explotació d'aplicacions informàtiques. 
S’hi inclouen els elements de programari, de maquinari i els éssers humans.

<strong>Sistema Operatiu</string>.- És un Sistema Informàtic que utilitzen els ordinadors per a facilitar administració dels seus recursos:
el maquinari (CPU, memòria, discs durs, etc...), el programari, i com els usuaris hi interactuen.
El diseny es basa en una estructura en capes. 

## Part física d'un sistema informàtic - Maquinari.

El maquinari (hardware) fa referència a tot allò que podem veure i tocar de l'ordinador.

Parts del maquinari.

* La <strong>placa mare o placa base (en anglès motherboard)<strong> és la targeta de circuits impresos central a l'ordinador que conté
el microprocessador, la memòria RAM del sistema, circuits electrònics de suport i targetes adaptadores addicionals: pantalla, xarxa, teclat, etc...
Aquestes targetes solen realitzar funcions de control de perifèrics, com monitors, impressores, unitats de disc, etc.

En resum, solen contenir:
- Connector a la font d'alimentació.
- Sòcols per a posar-hi una o més CPU.
- Un o més ventiladors per evitar sobrescalfament
- Ranures per a la memòria RAM.
- Xipset: conté connectors als processadors, memòries, unitats d'emmagatzematge secundari (pex. disc dur i connectors USB), targetes gràfiques (GPU).
  
  
### Classificació dels sistemes operatius
  
  
#### Segons la utilització dels recursos
Monotasca: només pot executar una tasca.
Fins que no acabi una, no pot començar una altra.
Multitasca: poden executar més d'una tasca simultàniament.

La 4a generació d'ordinadors ja permetia excecutar moltes tasques en paral.lel mitjançant la memòria RAM i un sistema operatiu
que permeti planificar l'ordre d'execució de les tasques.
Exemples: Unix, MSDOS 4.0

Si la CPU disposa de més d'un nucli, les tasques es poden executar realment de forma simultània.
Si només es disposa d'un nucli o el nombre de tasques és més elevat, el sistema reparteix el temps de CPU entre les diferents tasques, 
  donant la sensació que s'estan executant de forma simultània.
  
#### Segons el nombre de processadors que pot gestionar.
Monoprocessador: encara que la màquina disposi de més d'un processador (o un processador amb més d'un nucli), només pot fer treballar un.
Multiprocessador: si la màquina disposa de més d'un processador (o processadors amb més d'un nucli), és capaç de repartir les tasques entre tots.

Tant els processadors d'Intel com els d'AMD avui en dia tenen 2 o 4 nuclis; inclús els més recents 8.
  
Més informació història CPU's:
https://www.onubaelectronica.es/evolucion-de-la-cpu/
  
####  Segons el nombre d'usuaris
Monousuari: només poden atendre un usuari.
Aquest usuari té accés a tots els recursos de la màquina.
Multiusuari: més d'un usuari pot utilitzar els recursos de la màquina.
  
Unix (sistema operatiu predecessor de Linux, molt usat els anys 80 i 90) ja era multiusuari. 
Windows va trigar molt més temps en ser multiusuari, fins al Windows NT (una mica abans de l'XP) era monousuari.
 
En funció del tipus d'usuari, es poden configurar diferents privilegis.
  
#### Segons el tipus d'aplicacions
De propòsit general: poden executar qualsevol tipus d'aplicació i en diferents tipus de màquines.
De propòsit específic: només es poden executar en un tipus de dispositiu o només per a una tasca determinada: el sistema operatiu 
  d'un rellotge intel·ligent, un sistema de control dels semàfors, lector de llibres, videoconsoles ...

#### Segons la propietat
Sistemes propietaris: tenen limitacions en el dret d'ús, còpia, distribució, modificació i no es pot disposar del codi font: Windows, macOS, Unix...
Sistemes lliures: es poden utilitzar sense limitacions, es poden copiar, distribuir o modificar lliurament: GNU/Linux.

####  Segons la arquitectura de la CPU.
64 bits -> Des de l'entrada als 2000, tots els sistemes operatius han aprofitat aquesta arquitectura.  
32 bits -> Arquitectura que encara s'usa en ordinadors que no tenen aquesta arquitectura de processador (entrada 2000 o anteriors)
16 bits -> Ordinadors molt vells (sense Linux ni Windows ni MacOS)


