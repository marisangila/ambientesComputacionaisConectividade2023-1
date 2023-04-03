#!/bin/bash

# Verifica se o script foi executado com permissão de root
if [ $(id -u) -ne 0 ]; then
  echo "Este script precisa ser executado como root!"
  exit 1
fi

# Pede ao usuário para inserir o nome do grupo
read -p "Insira o nome do grupo: " group_name

# Pede ao usuário para inserir as permissões
read -p "Insira as permissões (r, w, x, rw, rx, wx): " permissions

# Verifica se o grupo existe
if ! grep -q "^$group_name:" /etc/group; then
  echo "O grupo $group_name não existe!"
  exit 1
fi

# Aplica as permissões no grupo
chmod g=$permissions /home

echo "Permissões $permissions aplicadas com sucesso ao grupo $group_name."

