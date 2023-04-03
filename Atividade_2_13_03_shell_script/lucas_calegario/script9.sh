#! /bin/bash

if [ $# -eq 1 ]; then
    user=$1
elif [ $# -eq 0]; then
    user=$(whoami)
else
    echo "A sintaxe correta é ./script9.sh [usuário]"
fi

curr_date = ${date +"%Y%m%d"}
curr_time = ${date +"%T"}
touch "${curr_date}_<HH:MM:SS>_EstadoSistema_<usuário>.txt"