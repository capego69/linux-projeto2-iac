#!/bin/bash

# Implementando o Servidor Apache no Ubuntu 22.04
# Tarefa de Desafio da DIO

# Atualizando o Repositorio do Apt
echo "...atualizando !"
apt-get update -y
apt-get upgrade -y

# Instalar as Recursos  necessarios

echo "...instalando o Apache!"
apt-get install apache2 -y

echo "...instalando o Unzip!"
apt-get install unzip -y

# Download da Aplicação
echo "...download!"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "...descompactar e mover aplicação para pasta padrão!"
unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/

# Deve-se atribuir permissão de execução ao  script 
# copie a linha => $ chmod +x iac_Apache.sh
