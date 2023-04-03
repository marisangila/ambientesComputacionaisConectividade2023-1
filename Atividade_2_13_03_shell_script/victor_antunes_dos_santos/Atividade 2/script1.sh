#!/bin/bash

if [ -z "$1" ]
then
  echo "Informe um nome de usuário"
  exit 1
fi

if id "$1" >/dev/null 2>&1
then
  echo "O usuário $1 existe"
else
  echo "O usuário $1 não existe"
fi
