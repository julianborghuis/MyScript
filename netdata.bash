#!/bin/bash
USE_PREFIX=Melding
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U heeft gekozen voor Netdata"
echo -e "\e[96m[${USE_PREFIX}] Dit process kan enkel minuten duuren..."
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 5
clear
fi
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Dit process kan enkel minuten duuren..."
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 5
bash <(curl -Ss https://my-netdata.io/kickstart.sh) --no-updates
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U netdata link is https://ipv4/19999"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 5
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U word binnen enkelen seconden terug gestuurd naar het dashboard..."
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
bash dashboard.bash