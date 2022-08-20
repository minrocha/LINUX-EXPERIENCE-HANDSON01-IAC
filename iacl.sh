#!/bin/sh

echo "criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -5 senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -5 senha123) -G GRP_ADM 
useradd joao -m -s /bin/bash -p $(openssl passwd -5 senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -5 senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -5 senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -5 senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -5 senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -5 senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -5 senha123) -G GRP_SEC

echo "especificando permissoes dos diretorios"

chown 777 /publico
chown 770 /adm
chown 770 /ven
chown 770 /sec

echo "Fim..."
