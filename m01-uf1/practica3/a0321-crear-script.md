## Com crear i executar un script ? 

1. Crea el fitxer hacking.sh

```bash
#!/bin/bash
for i in {1..100}
do
 echo "Hacking. $i% completed."
 sleep 2
done
echo "Hacking completed :)"
```

2.
Converteix-lo amb programa.

```bash
chmod +x hacking.sh
```

3. Executa i a gaudir :)

```bash
./hacking
```
