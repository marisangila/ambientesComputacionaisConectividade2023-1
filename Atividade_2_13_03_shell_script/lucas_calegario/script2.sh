#! /bin/bash

number_of_processes=`ps ax | wc -l`
echo "$(($number_of_processes - 1)) processos abertos"