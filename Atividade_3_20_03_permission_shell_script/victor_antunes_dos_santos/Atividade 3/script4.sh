#!/bin/bash

# Verifica se o script está sendo executado como root
if [ "$EUID" -ne 0 ]
  then echo "Esse script precisa ser executado como root"
  exit
fi

# Recebe o nome do arquivo
read -p "Informe o nome do arquivo: " filename

# Verifica se o arquivo existe
if [ ! -f "$filename" ]; then
  echo "O arquivo $filename não existe"
  exit
fi

# Recebe o novo dono do arquivo
read -p "Informe o novo dono do arquivo: " new_owner

# Altera o dono do arquivo
chown "$new_owner" "$filename"

echo "O arquivo $filename agora é de propriedade do usuário $new_owner"
