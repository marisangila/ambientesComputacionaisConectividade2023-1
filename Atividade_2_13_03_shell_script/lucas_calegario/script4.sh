#! /bin/bash

if [ $# -ne 3 ]; then
    echo "A sintaxe correta é ./script4.sh {arg1} {arg2} {arg3}"
    exit 1
fi

echo "Você passou quantidade correta de argumentos"