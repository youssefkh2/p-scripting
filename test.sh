#!/bin/bash
source stat.sh
#afficherT
#affichert
#afficherN
#affichers
#afficherd
#afficherh
#afficherv
#affichern
#show_usage
#affichermenu
statistic

while getopts ":hTtnNdmsg" option;
do 
case $option in 
h) 
afficherh
;;
T) 
afficherT
;;
t) 
affichert
;;
n)
affichern
;;
N) 
afficherN
;;
d) 
afficherd
;;
m) 
affichermenu
;;
s) 
affichers
;;
g)
menugraphique
;;
*)
show_usage
esac
done
