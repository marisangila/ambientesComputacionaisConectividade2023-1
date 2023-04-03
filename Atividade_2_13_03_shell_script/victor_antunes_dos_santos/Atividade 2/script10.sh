#!/bin/bash

# Solicita ao usuário o nome do arquivo CSV
read -p "Digite o nome do arquivo CSV a ser lido: " arquivo_csv

# Verifica se o arquivo existe
if [ ! -f "$arquivo_csv" ]; then
    echo "Arquivo não encontrado!"
    exit 1
fi

# Lê o arquivo CSV e exibe os dados na tela
echo "Dados do arquivo $arquivo_csv:"
cat "$arquivo_csv" | column -t -s","
