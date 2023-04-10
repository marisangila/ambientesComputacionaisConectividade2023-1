#! /bin/bash

if [ $# -ne 1 ]; then
    echo "A sintaxe correta é ./script10.sh arquivo"
    exit 1
fi

for row in $(cat "$1"); do
    readarray -d \; -t cells <<< "${row}"
    formatted_row=""

    for (( n=0; n<${#cells[*]}; n++ )); do
        formatted_row+="${cells[n]} | "
    done

    echo "${formatted_row}"
done
