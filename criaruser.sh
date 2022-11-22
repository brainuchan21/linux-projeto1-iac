#!/bin/bash


echo " Criando  usuario do sistema..."

useradd guest10 -c "Usuario convidado" -s /bin/bash -m -p $(openssl  passwd senha123)
passwd guest -e


 useradd guest11 -c "Usuario convidado" -s /bin/bash -m -p $(openssl  passwd senha123)
passwd  guest -e

useradd guest12 -c "Usuario convidado" -s /bin/bash -m -p $(openssl  passwd senha123)
passwd  guest -e

useradd guest13 -c "Usuario convidado" -s /bin/bash -m -p $(openssl  passwd senha123)
passwd  guest -e

echo "Finalizado!!"
