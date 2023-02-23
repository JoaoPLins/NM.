#!/bin/bash

grep -Fwf ip_amb iplogB.txt > ip_amb_online
grep -Fxvf ip_amb_online ip_amb >ip_amb_offline

grep -Fwf ip_andar_1 iplogB.txt > ip_andar_1_online
grep -Fxvf ip_andar_1_online ip_andar_1 >ip_andar_1_offline

grep -Fwf ip_andar_2 iplogB.txt > ip_andar_2_online
grep -Fxvf ip_andar_2_online ip_andar_2 >ip_andar_2_offline

grep -Fwf ip_andar_3 iplogB.txt > ip_andar_3_online
grep -Fxvf ip_andar_3_online ip_andar_3 >ip_andar_3_offline

grep -Fwf ip_andar_4 iplogB.txt > ip_andar_4_online
grep -Fxvf ip_andar_4_online ip_andar_4 >ip_andar_4_offline

grep -Fwf ip_andar_5 iplogB.txt > ip_andar_5_online
grep -Fxvf ip_andar_5_online ip_andar_5 >ip_andar_5_offline

grep -Fwf ip_andar_6 iplogB.txt > ip_andar_6_online
grep -Fxvf ip_andar_6_online ip_andar_6 >ip_andar_6_offline

grep -Fwf ip_andar_7 iplogB.txt > ip_andar_7_online
grep -Fxvf ip_andar_7_online ip_andar_7 >ip_andar_7_offline

grep -Fwf ip_andarT iplogB.txt > ip_andarT_online
grep -Fxvf ip_andarT_online ip_andarT >ip_andarT_offline

grep -Fwf ip_p1 iplogB.txt > ip_p1_online
grep -Fxvf ip_p1_online ip_p1 >ip_p1_offline

grep -Fwf ip_Laboratorio iplogB.txt > ip_Laboratorio_online
grep -Fxvf ip_Laboratorio_online ip_Laboratorio >ip_Laboratorio_offline

grep -Fwf ip_anexo1 iplogB.txt > ip_anexo1_online
grep -Fxvf ip_anexo1_online ip_anexo1 >ip_anexo1_offline

sudo ping 10.247.172.1 -c 1 -w 5 >>iplogA.txt && echo "10.247.172.1"> ip_Importantes_Online
sudo ping 10.15.61.248 -c 1 -w 5 >>iplogA.txt && echo "10.15.61.248">> ip_Importantes_Online
sudo ping 10.15.61.246 -c 1 -w 5 >>iplogA.txt && echo "10.15.61.246">>ip_Importantes_Online

grep -Fxvf ip_Importantes_Online ip_Importantes >ip_Importantes_Offline


#print blablabla 

date + "%D" 
echo "AMBULATORIO"
echo -e "\e[1;32m IPs Conectados:"
column ip_amb_online 
echo -e "\e[1;31m IPs Desconectados:"
column ip_amb_offline

echo "1º Andar"
echo -e "\e[1;32m IPs Conectados:"
column ip_andar_1_online
echo -e "\e[1;31m IPs Desconectados:"
column ip_andar_1_offline

echo "2º Andar"
echo -e "\e[1;32m IPs Conectados:"
column ip_andar_2_online
echo -e "\e[1;31m IPs Desconectados:"
column ip_andar_2_offline

echo "3º Andar"
echo -e "\e[1;32m IPs Conectados:"
column ip_andar_3_online
echo -e "\e[1;31m IPs Desconectados:"
column ip_andar_3_offline

echo "4º Andar"
echo -e "\e[1;32m IPs Conectados:"
column ip_andar_4_online
echo -e "\e[1;31m IPs Desconectados:"
column ip_andar_4_offline

echo "5º Andar"
echo -e "\e[1;32m IPs Conectados:"
column ip_andar_5_online
echo -e "\e[1;31m IPs Desconectados:"
column ip_andar_5_offline

echo "6º Andar"
echo -e "\e[1;32m IPs Conectados:"
column ip_andar_6_online
echo -e "\e[1;31m IPs Desconectados:"
column ip_andar_6_offline

echo "7º Andar"
echo -e "\e[1;32m IPs Conectados:"
column ip_andar_7_online
echo -e "\e[1;31m IPs Desconectados:"
column ip_andar_7_offline

echo "Terreo" 
echo -e "\e[1;32m IPs Conectados:"
column ip_andarT_online
echo -e "\e[1;31m IPs Desconectados:"
column ip_andarT_offline

echo "P1"
echo -e "\e[1;32m IPs Conectados:"
column ip_p1_online
echo -e "\e[1;31m IPs Desconectados:"
column ip_p1_offline

echo "Laboratorio"
echo -e "\e[1;32m IPs Conectados:"
column ip_Laboratorio_online
echo -e "\e[1;31m IPs Desconectados:"
column ip_Laboratorio_offline

echo "Importantes"
echo -e "\e[1;32m IPs Conectados:"
column ip_Importantes_Online
echo -e "\e[1;31m IPs Desconectados:"
column ip_Importantes_Offline

sleep 60 
clear



