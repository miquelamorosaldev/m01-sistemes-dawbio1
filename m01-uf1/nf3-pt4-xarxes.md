## Introducció a les xarxes.

### Comandes bàsiques.

<em>Nota: Són comandes per a Linux. ping és la única que serveix per tots els SO (Windows/Linux/Mac)</em>

1. Tinc ip assignada?
 
ip addr

2. Comprovar ping localhost

ping 127.0.0.1

3. Comprovar ip

ping @IP_LOCAL

4. Comprovar RUTA

ping @IP_EXTERNA

ping 8.8.8.8

5. Comprovar ROUTER / GW

ip route (per veure la configuració)

ping @IP_GW

6. Comprovació DNS

ping NOM_SERVIDOR

ping vilaweb.cat

ping proven.cat

7. Comprovació ports

netstat -a

netstat -e

netstat -an | grep 'LISTEN'


8. Consultar fitxer de hosts.

cat /etc/hosts

9. Quina IP tinc ? 

A Linux
ifconfig

A Windows
ipconfig

10. Alguna comanda no va a Ubuntu. Com ho faig?

sudo apt update

sudo apt -y install net-tools

