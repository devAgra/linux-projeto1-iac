#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários, e especificando o grupo a qual ele pertence..."

useradd Cascalho -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Granada -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Quartzo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd Platina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Cobre -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Ouro -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd Silimanita -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Goku -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Frankstein -m -s /bin/bash -p $(oppen1 passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script Finalizado..."















