#!/bin/bash

# Verifica se o script está sendo executado como root
if [ "$EUID" -ne 0 ]
  then echo "Esse script precisa ser executado como root"
  exit
fi

# Verifica se foram passados dois argumentos
if [ "$#" -ne 2 ]; then
  echo "Este script requer dois argumentos: permissões (r, w, x, rw, rx ou wx) e um arquivo de usuários"
  exit
fi

# Verifica se o arquivo de usuários existe
if [ ! -f "$2" ]; then
  echo "O arquivo $2 não existe"
  exit
fi

# Converte as permissões informadas em modo octal
case "$1" in
  r) permissions=4 ;;
  w) permissions=2 ;;
  x) permissions=1 ;;
  rw) permissions=6 ;;
  rx) permissions=5 ;;
  wx) permissions=3 ;;
  *) echo "Permissão inválida: $1" && exit ;;
esac

# Itera sobre os usuários no arquivo
while read -r user; do
  # Verifica se o usuário existe
  if id -u "$user" >/dev/null 2>&1; then
    # Atribui as permissões ao usuário
    chmod "$permissions" "/home/$user"
    echo "Permissões $permissions (modo octal) atribuídas ao usuário $user"
  else
    echo "O usuário $user não existe"
  fi
done < "$2"
