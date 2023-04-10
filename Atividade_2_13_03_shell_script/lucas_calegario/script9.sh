#! /bin/bash

if [ $# -eq 1 ]; then
    user=$1
elif [ $# -eq 0 ]; then
    user=$(whoami)
else
    echo "A sintaxe correta é ./script9.sh [usuário]"
fi

curr_date=`date +"%Y%m%d"`
curr_time=`date +"%T"`
filename="${curr_date}_${curr_date}_${curr_time}_EstadoSistema_${user}.txt"

raw_num_of_proc=`ps a | wc -l`
num_of_proc=$(($raw_num_of_proc - 1))

raw_user_num_of_proc=`ps -U ${user} -u ${user} u | wc -l`
user_num_of_proc=$(($raw_user_num_of_proc - 1))

raw_sys_user_diff=$(( $num_of_proc - $user_num_of_proc ))
sys_user_diff="${raw_sys_user_diff#-}"

raw_root_num_of_proc=`ps -U root -u root u | wc -l`
root_num_of_proc=$(($raw_root_num_of_proc - 1))

touch ${filename}
echo "Número total de processos ativos no sistema: ${num_of_proc}" >> ${filename}
echo "Número total de processos ativos do usuário: ${user_num_of_proc}" >> ${filename}
echo "Nome do usuário: ${user}" >> ${filename}
echo "Quantidade de processos sendo executados excluindo-se os do usuário: ${sys_user_diff}" >> ${filename}
echo "Quantidade de processos sendo executados como root: ${root_num_of_proc}" >> ${filename}