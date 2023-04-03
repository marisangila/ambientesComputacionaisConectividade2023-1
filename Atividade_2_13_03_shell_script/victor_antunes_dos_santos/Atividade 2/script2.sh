#!/bin/bash

num_processos=$(ps aux | wc -l)

echo "Existem $num_processos processos em execução"

