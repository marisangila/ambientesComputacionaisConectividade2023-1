#!/bin/bash

if [[ -z "$1" ]]; then
  echo "Por favor, informe o nome do arquivo contendo os nomes dos alunos."
  exit 1
fi

if [[ ! -f "$1" ]]; then
  echo "Arquivo não encontrado!"
  exit 1
fi

while read nome_aluno; do
    if [[ "$nome_aluno" =~ ^[a-zA-Z\ ]+$ ]]; then
    mkdir -p "aluno_${nome_aluno}"
    echo "Diretório 'aluno_${nome_aluno}' criado com sucesso."
  else
    echo "Nome de aluno inválido: $nome_aluno"
  fi
done < "$1"
