#!/bin/bash
echo "------------------------------------------------------------------------------------------------------------"
echo "Inicializando"
date +"%D"
date +"%T"
a = 1 
echo "-----------------------------------------------------------------------------------------------------------"
echo "primeiro scan" 
./test0101.sh 
sleep 10
echo "-----------------------------------------------------------------------------------------------------------"
echo "primeiro scan completo"
echo "programa iniciado"
echo "-----------------------------------------------------------------------------------------------------------"
screen -d -m -S UI ./test04;
while a==1 ; do
./test0102.sh;
./testGrep02.sh ;
./test09.sh;
date +"%D"
echo -e "\e[1;32m IPs Conectados:"
column logs/iplogB.txt
echo -e "\e[1;31m IPs ativos Desconectado:"
grep -Fxvf logs/iplogB.txt logs/iplogC.txt > offline.txt
column offline.txt
echo -e "\e[0m"
sleep 18
clear
done;

