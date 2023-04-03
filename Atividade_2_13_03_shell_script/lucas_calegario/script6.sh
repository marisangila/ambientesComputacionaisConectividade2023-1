#! /bin/bash

if [ $# -ne 0 ]; then
    echo "A sintaxe correta é ./script6.sh"
    exit 1
fi

echo "Digite o caminho para o arquivo que deseja verificar: "
read file_to_check

if [ -f "$file_to_check" ];
then
    echo "O arquivo $1 existe"
else
    echo "O arquivo $1 não existe"
fi