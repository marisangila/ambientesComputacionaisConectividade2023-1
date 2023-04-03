#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Por favor, informe o nome do arquivo."
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "O arquivo informado não existe."
  exit 1
fi

echo "O arquivo $1 tem $(wc -l < "$1") linhas."
