#!/bin/bash

# Verifica se o usuário é root
if [ $(id -u) -ne 0 ]; then
    echo "Este script precisa ser executado como root!"
    exit 1
fi

# Verifica se o arquivo de usuários foi informado
if [ $# -lt 1 ]; then
    echo "Informe o arquivo com os nomes de usuários."
    exit 1
fi

# Verifica se o arquivo existe
if [ ! -f $1 ]; then
    echo "Arquivo não encontrado!"
    exit 1
fi

# Lê o arquivo linha por linha e cria os usuários
while read user; do
    if id "$user" >/dev/null 2>&1; then
        echo "O usuário $user já existe."
    else
        useradd -m $user
        echo "Usuário $user criado com sucesso."
    fi
done < $1
