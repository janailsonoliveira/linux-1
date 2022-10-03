#!/bin/bash

echo 'Atulizar servidor'

apt-get update
apt-get upgrade -y

echo 'Instalar servidor Apache'

apt install apache2 -y

echo 'Instalar unzip'

apt install unzip -y

echo 'Baixar aplicação do git'

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo 'Descompactar projeto'

unzip main.zip

echo 'Mover arquivos para o diretório padrão do apache'

cd linux-site-dio

cp -R * /var/www/html

echo 'Finalizado'


