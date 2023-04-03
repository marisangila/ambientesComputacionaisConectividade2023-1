#! /bin/bash

if [ $# -ne 1 ]; then
    echo "A sintaxe correta é ./script1.sh {username}"
    exit 1
fi

usuario_encontrado=`grep "^$1:" /etc/passwd | wc -l`

if [ "$usuario_encontrado" -ge 1 ]; then
    echo "Usuário $1 existe"
else
    echo "Usuário $1 não existe"
fi