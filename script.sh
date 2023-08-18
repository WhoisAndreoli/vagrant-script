#!/bin/bash

echo "Criando diretórios..."

cd /
sudo mkdir publico
sudo mkdir adm
sudo mkdir ven
sudo mkdir sec

echo "Criando grupos..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criando usuários"

sudo useradd carlos -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
sudo useradd maria -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
sudo useradd joao -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

sudo useradd debora -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
sudo useradd sebastiana -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
sudo useradd roberto -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

sudo useradd josefina -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
sudo useradd amanda -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
sudo useradd rogerio -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

echo "permissões..."

sudo chmod 777 /publico

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec

echo "FIM.."
