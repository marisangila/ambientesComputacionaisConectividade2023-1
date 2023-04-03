#!/bin/bash

echo "Informe o diretório de origem:"
read origem

echo "Informe o diretório de backup:"
read backup

if [ -d "$origem" ] && [ -d "$backup" ]; then
  cp -R "$origem"/* "$backup"
  echo "Backup realizado com sucesso."
else
  echo "Diretórios inválidos."
fi
