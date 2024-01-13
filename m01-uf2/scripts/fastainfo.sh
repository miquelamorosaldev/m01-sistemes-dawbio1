#!/bin/bash
echo ‘Llegim tots els fitxers fasta de la carpeta actual.’
for i in *.fa; do
    # Num seq.
    grep -c "^>" $i
    # Capçalera seqüència.
    grep "^>" $i
done
