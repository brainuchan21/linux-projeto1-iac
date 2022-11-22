#!/bin/bash

echo "Criando diretórios ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários ..."

useradd carlos -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_ADM
useradd maria  -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_ADM
useradd joao   -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_VEN
useradd marcia -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_VEN
useradd roger  -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_VEN

useradd jofesa -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_SEC
useradd renner -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_SEC

echo "Especificando permissoes dos diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim ..."

