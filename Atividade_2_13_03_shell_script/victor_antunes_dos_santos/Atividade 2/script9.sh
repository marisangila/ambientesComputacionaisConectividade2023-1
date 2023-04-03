#!/bin/bash

# Verifica se um argumento foi passado. Se não, usa o usuário atual.
if [ -z "$1" ]; then
  usuario=$(whoami)
else
  usuario=$1
fi

# Cria o nome do arquivo com as informações do sistema.
datahora=$(date +"%Y%m%d_%T")
nome_arquivo="${datahora}_EstadoSistema_${usuario}.txt"

# Coleta as informações do sistema e as armazena no arquivo.
echo "Número total de processos ativos no sistema: $(ps -e | wc -l)" >> "$nome_arquivo"
echo "Número de processos ativos do usuário: $(ps -u "$usuario" | wc -l)" >> "$nome_arquivo"
echo "Nome do usuário: $usuario" >> "$nome_arquivo"
echo "Quantidade de processos sendo executados excluindo-se os do usuário: $(($(ps -e | wc -l) - $(ps -u "$usuario" | wc -l)))" >> "$nome_arquivo"
echo "Quantidade de processos sendo executados como root: $(ps -U root | wc -l)" >> "$nome_arquivo"

echo "Informações do sistema coletadas e armazenadas no arquivo $nome_arquivo."
