#! /bin/bash

if [ $# -ne 0 ]; then
    echo "A sintaxe correta é ./script7.sh"
    exit 1
fi

echo "Digite o caminho para o diretório que deseja fazer backup: "
read directory_to_check
echo "Digite o caminho para o diretório onde deseja salvar o backup: "
read directory_for_backup

tar -zcvf "$directory_for_backup/backup.tgz" "$directory_to_check"