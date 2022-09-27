#!/bin/bash

echo "Criando diretórios"

mkdir /publico 
mkdir /adm 
mkdir /ven 
mkdir /sec

echo "Criando Grupos"

groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

echo "Criando Usuários"

useradd carlos -m -c "Carlos Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -c "Maria Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -c "João Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -c "Debora Santos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Santos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberta -m -c "Roberta Santos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -c "Joséfina Souza" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda Souza" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogério Souza" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Dando permissão aos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"
