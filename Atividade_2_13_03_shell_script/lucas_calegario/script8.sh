#! /bin/bash

if [ $# -ne 1 ]; then
    echo "A sintaxe correta é ./script8.sh arquivo"
    exit 1
fi

if [ ! -f "$1"  ]; then
    echo "O arquivo $1 não existe"
    exit 1
fi

for name in $(cat "$1"); do
    mkdir "aluno_$name"
done