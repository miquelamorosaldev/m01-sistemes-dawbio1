# UF3/NF1 : Instal·lació i gestió del  programari bàsic i d'elaboració de la documentació tècnica

**Objectius generals**

- Utilitzar les eines d'administració per el manteniment de les aplicacions
- Instal·lacions de noves aplicacions
- Gestió de les actualitzacions del sistema
- Eliminació d'aplicacions obsoletes i innecessàries
- Resolució de les dependències

**Teoria**

### **1. DPKG i paquets de Debian**
La comanda encarregada de gestionar els paquets .deb (el format utilitzat per Debian i Ubuntu) és ***dpkg***. En aquest sentit, aquesta comanda és equivalent a la comanda ***rpm*** que es fa servir a la família Red Hat per gestionar els paquets .**rpm**.

Això vol dir que ***dpkg*** tampoc és capaç d'instal·lar les dependències dels paquets si aquests no han sigut descarregades abans.

*No sempre els paquets i/o programes .deb estan en repositoris oficials (com el centre de Software d’Ubuntu); sinó que els hem de descarregar i instal.lar nosaltres.*

Per això necessitarem alguna altra eina (com per exemple, **apt-get**) funcionant per sobre d'ell que sigui capaç de connectar amb els repositoris convenientment.

En la taula següent apareixen alguns paràmetres de ***dpkg**.*

|**- i :**|instalar paquetes|
| :- | :- |
|**-r** :|eliminar paquetes instalados|
|**-P** :|purga, lo elimina todo(instalación y paquetes).|
|**- l**:|Enumere los paquetes de forma concisa.|
|**-L** :|Lista ficheros de los paquetes. Lista de archivos 'propiedad' por paquete|
|**-s** :|Buscar dentro de los paquetes.|


### **2. Eina Apt/Apt-get.**

**Apt** és una ordre per a instal·lar aplicacions en sistemes basats en debian o ubuntu, i gestionar automàticament les versions d’aquestas aplicacions (No confondre amb apt-get o apt-cache que realitzen funcions similars a apt).

Amb **apt** podem realitzar les operacions mes comuns sobre paquets i/o programes des de la línia d’ordres en Linux.

- apt list:

`	`lista todos los paqutes instalados

- apt search:

Es posible buscar patrones en la lista de paquetes.

- ` `apt show:

ver información del paquete

- `  `apt remove:

quitar el paquete

- `  `apt install:

instala el paquete

- `  `apt update:

Revisa que los paquetes estan actualizados y es importante que esten lincados a un servidor, dentro de la carpte /apt/.

-  `    `apt autoremove:

Tambien elimina las dependencias del paquete, aunque este sea importante para otro programa.

-  `    `apt upgrade:

actualiza paquetes que el comando update a encontrado

-  `    `apt full-upgrade:

Elimina los paquetes antiguos si es necesario para realizar la actualización de los paquetes a sus ultimas versiones. Se utiliza una vez que tu distribucion termina el plazo de LTS  a la siguiente

-  `    `apt edit-sources:

te permite editar el sources.list; que es donde se encuentran todos los programas y repositorios que coleccionan paquetes.


És habitual dubtar entre la diferència entre apt i apt-get.

Podem trobar respostes en aquest artícle.

<https://juncotic.com/apt-vs-apt-get-vs-aptitude-algunas-notas/>

***apt** consolida las características de apt-get, apt-cache, y otros comandos similares, y simplifica mucho el trabajo con la paquetería DEB mediante opciones y modificadores más amigables.*

***apt-get** sigue siendo soportada por la mayoría de las distros DEB (y por ese motivo muchos usuarios no ven motivación en aprender apt), y disponer de las dos herramientas. apt facilita algunas cosas, y apt-get sigue siendo muy útil para otras (ver las conclusiones abajo).*


### **3. Eina Snap.**

Finalment, és important destacar que des de fa uns anys Ubuntu i algunes versions derivades (PopOs, Lubuntu, ...) també utilitzen un gestor de paquets (com Apt) anomenat Snap, ja que asseguren que és més eficient.

És important saber-ho perquè a Ubuntu últimament mantenen més actualitzat snap que Apt.

*Per exemple, aquest 2021 hem provat d’instal.lar l’Apache Netbeans amb el apt-get a Ubuntu i ens ha retornat la versió 10; quan ja existeix la versió 12 estable.*

*És possible que ja s’hagi actualitzat; però el cert és que si volies/vols instal.lar l'última versió o bé havies de descarregar el codi font i executar-lo o utilitzar el gestor de paquets Snap.*

[*https://snapcraft.io/install/netbeans/ubuntu*](https://snapcraft.io/install/netbeans/ubuntu)

```sudo apt update```

```sudo apt install snapd```

```sudo snap install netbeans --classic```

És habitual que Apt i Snap coexisteixin en distribucions de Debian.

### **4. AppImage.**

És un paquet semblant a les aplicacions portables de Windows. Així que un programa amb AppImage no s'instal·la sinó que s'executa i no necessitarem utilitzar els permisos d'administrador. Per poder instal·lar AppImage només hem d'obrir la terminal i escriure el següent:

chmod a+x paquet.AppImage
./paquet.AppImage

<a href="https://ubunlog.com/instalar-paquete-appimage-ubuntu/">https://ubunlog.com/instalar-paquete-appimage-ubuntu/</a>


### **5. Altres alternatives.**

* Pacman, per a distribucions d’arch-Linux i Manjaro, que cada cop són més usades per les versions oficials per les comunitats.

* AUR, repositori comunitari (tipus Git) per a penjar.

<hr/>

**Desenvolupament de la pràctica**

Pots utilitzar una versió recent (a partir de 18) d’Ubuntu o PopOs per fer aquesta pràctica.

**1. Comandes útils APT. (3 punts, 1 punt per bloc)**

1.1 Llista tots els paquets que tens instal·lats al sistema i guarda-ho al fitxer uf3-pt1-programes.txt de la teua home.

*Pista: usa l’operador >.*

*1.2 Necessitem trobar i instal·lar un software d'un joc relacionat amb el tenis taula del qual no sabem el seu nom.*

*Com ho faries per a cercar un només amb el terminal?*

Pista: Usa la paraula clau tenis.

Executa el programa.

1.3 Desinstala el joc de tenis. Si no l’has trobat, instal.la i desinstal.la un altre joc.


**2. Instal.lació paquet DEB amb DPKG. (2 punts)**

Vull instal·lar el paquet chrome mitjançant el fitxer .deb que es pot descarregar de l’url <https://dl.google.com/linux/direct/google-chromestable_current_amd64.deb>

2.1 Fes la instal·lació del paquet .deb amb l’ordre i comprova que ara ja el tens instal·lat al sistema. (1,5 punts)

2.2 Obté tota la informació relacionada amb el paquet .deb. (1 punt)

**3. Instal.la Netbeans amb la comanda snap (2,5 punts)**

Quina versió has obtingut ?

<https://snapcraft.io/install/netbeans/ubuntu>

sudo apt update

sudo apt install snapd

sudo snap install netbeans --classic

Si no et funciona mostra l’error obtingut.


**4. Instal.la l'última versió estable de Node.js i Npm. (2,5 punts)**

Node.js és un motor que ens permet transformar codi JavaScript executable en un servidor, i s’usa, entre d’altres funcions, per a generar WebService de prova i WebSockets.

[**https://linuxize.com/post/how-to-install-node-js-on-ubuntu-18.04/**](https://linuxize.com/post/how-to-install-node-js-on-ubuntu-18.04/)

**Fixa’t que has de fer la comanda que comença per curl ... sinó et baixarà una versió antiga.**

**Un cop instal.lada, crea un projecte que autogeneri un WebService, seguint aquest tutorial. (1 punt)**

Ens presenta un programa de Javascript anomenat JSON-Server.

Els programes Javascript de servidor (de Node.js) s’organitzen amb un gestor de paquets anomenat NPM.

Seguiu les instruccions i veureu el fàcil que és fer WS de prova :)

[**https://sigdeletras.com/2020/crear-una-fake-reat-api-con-json-server-copy/**](https://sigdeletras.com/2020/crear-una-fake-reat-api-con-json-server-copy/)




**5. Utilitzant el gestor snap, instal.la l’emulador dosbox-x, ideal per a jugar a jocs antics (2,5 punts addicionals, OPCIONAL)**

**apt update**

**apt install snapd -y**

**snap install dosbox-x**

*5.1 Quan hagis acabat, fes la captura de pantalla del dosbox (1 punt)*

Prova que funciona instal.lant un joc antic que només funcioni amb DOS.

Posarem The Secret Of Monkey Island, que en breu tornarà a estar de moda; el pots baixar legalment aquí:

<https://archive.org/details/monkey_dos>

Per a què funcioni, quan entris a dosbox usa aquestes comandes.

**keyb es**

**#Converteix una carpeta Linux en una de DOS(Microsoft) emulada.**

**mount c: /home/<usuari>**

**c:**

**cd <carpeta\_joc>**

**monkey v i mo**

*5.2 Fes captura de pantalla de la intro del joc (1 punt)*
DAWBIO1 – M01 – Sistemes. Instal.lació progamari.	Pàgina 5
