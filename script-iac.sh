#!/bin/bash
#
echo "Script para criação de Estrutura de Usuários"
echo "Diretórios e Permissões"

echo "Criando os grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados"
echo " "

echo "Criando os usuários"
useradd -c "Carlos" -m -s /bin/bash carlos
useradd -c "Maria" -m -s /bin/bash maria
useradd -c "Joao_" -m -s /bin/bash joao_
useradd -c "Debora" -m -s /bin/bash debora
useradd -c "Sebastiana" -m -s /bin/bash sebastiana
useradd -c "Roberto" -m -s /bin/bash roberto
useradd -c "Josefina" -m -s /bin/bash josefina
useradd -c "Amanda" -m -s /bin/bash amanda
useradd -c "Rogerio" -m -s /bin/bash rogerio
echo "Usuários criados!!!"
echo " "

echo "Criando os diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Diretórios criados"
echo " "

echo "Adicionando os usuários aos grupos"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao_
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio
echo "Usuários adicionados aos grupos"
echo " "

echo "Alterando a propriedade dos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "Propriedade dos diretórios alterados"
echo " "

echo "Alterando a permissões dos diretórios"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Permissões dos diretórios alteradas"

echo " "

echo "Fim do SCRIPT!!!"


