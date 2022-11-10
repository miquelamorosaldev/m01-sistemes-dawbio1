#!/bin/bash
if [ ! -d $1 ]
then
   mkdir -p $1/carpeta{1..20}
   echo "Hem creat la carpeta del projecte $1 correctament."
else
   echo "La carpeta del projecte $1 ja existeix."
fi
