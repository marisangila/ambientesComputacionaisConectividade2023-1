#! /bin/bash

if [ $# -ne 1 ]; then
    echo "A sintaxe correta é ./script3.sh {filename}"
    exit 1
fi

echo "Número de linhas" `cat $1 | wc -l` 