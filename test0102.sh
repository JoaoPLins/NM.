#!/bin/bash
#echo "";
date +"%T";
#echo "ips faixa 173";
#echo "";

date +"%T">>logs/iplogA.log ; 
for i in {1..254} ;

do (ping 10.247.173.$i -c 1 -w 5  >>logs/iplogA.log && echo "10.247.173.$i">logs/iplogB.txt &);

done
sleep 0.2

#echo "-----------------------------------------------------------------------------------------"
#echo "ips faixa 172:";
#echo " "
for k in {1..254} ;

do (ping 10.247.172.$k -c 1 -w 5  >>logs/iplogA && echo "10.247.172.$k">>logs/iplogB.txt &);
done
date +"%t">>logs/iplogA.log ; 
#echo "-----------------------------------------------------------------------------------------"

