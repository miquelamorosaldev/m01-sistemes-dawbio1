#!/bin/bash
  while true; do
  # Array amb les opcions possibles
  opcions=("pedra" "paper" "tisora" "llengardaix" "spock")
  # Obtenir un índex aleatori
  index=$((RANDOM % ${#opcions[@]}))
  # Obtenir l'opció corresponent a l'índex aleatori
  valor=${opcions[$index]}
  echo "$1 tira $valor" >> control_out.txt
  sleep 2
done;
