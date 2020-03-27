#!/bin/bash
USE_PREFIX=Melding
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U heeft gekozen voor AzureCast"
echo -e "\e[96m[${USE_PREFIX}] Dit process kan enkel minuten duuren..."
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 5 
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Keuzen menu"
echo -e "\e[96m[${USE_PREFIX}] Wilt u nog een anderen software er bij installeren zoals Netdata"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Wilt u netdata installeren? (Ja/Nee)"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
read NETDATA_CHOICE
if [ "$NETDATA_CHOICE" == "J" ]; then
bash <(curl -Ss https://my-netdata.io/kickstart.sh)
clear
sleep 2
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Netdata is geinstalleerd!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
elif [ "$NETDATA_CHOICE" == "j" ]; then
bash <(curl -Ss https://my-netdata.io/kickstart.sh)+
clear
sleep 2
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Netdata is geinstalleerd!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
elif [ "$NETDATA_CHOICE" == "N" ]; then 
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Netdata is niet geinstalleerd!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
elif [ "$NETDATA_CHOICE" == "n" ]; then 
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Netdata is niet geinstalleerd!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
else
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U keuzen was niet geldig"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 5
clear
fi
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Dit process kan enkel minuten duuren..."
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 5
mkdir -p /var/azuracast
cd /var/azuracast
curl -fsSL https://raw.githubusercontent.com/AzuraCast/AzuraCast/master/docker.sh > docker.sh
chmod a+x docker.sh
./docker.sh install
sleep 5
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U word binnen enkelen seconden terug gestuurd naar het dashboard..."
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
bash dashboard.bash