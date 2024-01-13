#!/bin/bash
execute_task() {
    task_number=$1
    echo "Iniciant Tasca $task_number"
    task_time=$((RANDOM % 10 + 6))
    sleep $task_time  # Simulem una feina que triga entre 6 i 10 segons
    echo "Tasca $task_number completada."
}
# Executem les 4 tasques en paral·lel
for i in {1..4}
do
    execute_task $i &
done
# Esperem que totes les tasques acabin abans de continuar amb la resta del script
wait
echo "Totes les tasques han acabat!"
