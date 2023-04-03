#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Erro: nenhum argumento passado. Favor informar o nome do arquivo."
    exit 1
fi

if [ -e $1 ]; then
    echo "O arquivo $1 existe."
else
    echo "O arquivo $1 não existe."
fi
