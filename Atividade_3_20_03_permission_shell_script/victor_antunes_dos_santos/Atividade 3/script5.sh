#!/bin/bash

# Verifica se o script está sendo executado como root
if [ "$EUID" -ne 0 ]
  then echo "Esse script precisa ser executado como root"
  exit
fi

# Verifica se foram passados dois argumentos
if [ "$#" -ne 2 ]; then
  echo "Este script requer dois argumentos: um arquivo com os nomes de usuários e o nome do grupo"
  exit
fi

# Lê o nome do arquivo de usuários e o nome do grupo
user_file=$1
group_name=$2

# Verifica se o grupo existe, caso não exista, cria o grupo
getent group "$group_name" >/dev/null || groupadd "$group_name"

# Itera sobre os usuários no arquivo
while read -r user; do
  # Verifica se o usuário já existe
  if id -u "$user" >/dev/null 2>&1; then
    echo "O usuário $user já existe"
  else
    # Cria o usuário e o adiciona ao grupo especificado
    useradd -m "$user" -G "$group_name" && echo "O usuário $user foi criado e adicionado ao grupo $group_name"
  fi
done < "$user_file"
