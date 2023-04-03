#!/bin/bash

echo "Digite o nome do arquivo: "
read nome_arquivo

if [ -e $nome_arquivo ]
then
    echo "O arquivo $nome_arquivo existe."
else
    echo "O arquivo $nome_arquivo não existe."
fi
