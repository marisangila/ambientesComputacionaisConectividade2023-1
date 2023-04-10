#! /bin/bash

if [ $# -ne 1 ]; then
    echo "A sintaxe correta é ./script5.sh {filename}"
    exit 1
fi

if [ -f "$1" ];
then
    echo "O arquivo $1 existe"
else
    echo "O arquivo $1 não existe"
fi