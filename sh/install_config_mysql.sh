#!/bin/bash

# MySQL ------------------------------------------------------------------------
echo "\n\n\t\t Instalando o MySQL"

sudo apt-get update
sudo apt-get install mysql-server

reset

# .my.cnf ----------------------------------------
printf "\n\t\t Configurando .my.cnf\n\n\t"

read -p "Digite seu usúario: " usuario
printf "\t"
read -p "Digite seu senha: " senha

# Caminho do arquivo
path="/home/$USER/.my.cnf"

echo "
[client]user=$usuario
password=\"$senha\"
" > $path

echo "[mysql]
user=$usuario
password=\"$senha\"
" >> $path

echo "
[mysqldump]
user=$usuario
password=\"$senha\"
" >> $path

echo "
[mysqldiff]
user=$usuario
password=\"$senha\"
" >> $path

echo "
[mysqld]
collation-server = utf8_unicode_ci
init-connect='SET NAMES utf8'
character-set-server = utf8
" >> $path

echo "\n\n\t\t Fim"


