#!/bin/bash
USE_PREFIX=Melding
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U heeft gekozen voor SolusVM Versie Installar"
echo -e "\e[96m[${USE_PREFIX}] Dit process kan enkel minuten duuren..."
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 5 
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Keuzen menu"
echo -e "\e[96m[${USE_PREFIX}] Welke Versie's wilt u installeren"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Wilt u ze alle versie's installeren? (Ja/Nee)"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
read ALLEMAAL
if [ "$ALLEMAAL" == "J" ]; then
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Dit process kan enkel minuten duuren..."
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
wget http://m.whatuptime.com/openvz7/template/ct/centos-6-x86_64.tar.gz -O /vz/template/cache/centos-6-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/centos-7-x86_64.tar.gz -O /vz/template/cache/centos-7-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/centos-8-x86_64.tar.gz -O /vz/template/cache/centos-8-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/ubuntu-14.04-x86_64.tar.gz -O /vz/template/cache/ubuntu-14.04-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/ubuntu-16.04-x86_64.tar.gz -O /vz/template/cache/ubuntu-16.04-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/ubuntu-18.04-x86_64.tar.gz -O /vz/template/cache/ubuntu-18.04-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/debian-8.0-x86_64.tar.gz -O /vz/template/cache/debian-8.0-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/debian-9.0-x86_64.tar.gz -O /vz/template/cache/debian-9.0-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/debian-10.0-x86_64.tar.gz -O /vz/template/cache/debian-10.0-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/vzlinux-6-x86_64.tar.gz -O /vz/template/cache/vzlinux-6-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/vzlinux-7-x86_64.tar.gz -O /vz/template/cache/vzlinux-7-x86_64.tar.gz
clear
sleep 2
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Alle SolusVM Template's zijn geinstalleerd!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
elif [ "$ALLEMAAL" == "j" ]; then
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Dit process kan enkel minuten duuren..."
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
wget http://m.whatuptime.com/openvz7/template/ct/centos-6-x86_64.tar.gz -O /vz/template/cache/centos-6-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/centos-7-x86_64.tar.gz -O /vz/template/cache/centos-7-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/centos-8-x86_64.tar.gz -O /vz/template/cache/centos-8-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/ubuntu-14.04-x86_64.tar.gz -O /vz/template/cache/ubuntu-14.04-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/ubuntu-16.04-x86_64.tar.gz -O /vz/template/cache/ubuntu-16.04-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/ubuntu-18.04-x86_64.tar.gz -O /vz/template/cache/ubuntu-18.04-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/debian-8.0-x86_64.tar.gz -O /vz/template/cache/debian-8.0-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/debian-9.0-x86_64.tar.gz -O /vz/template/cache/debian-9.0-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/debian-10.0-x86_64.tar.gz -O /vz/template/cache/debian-10.0-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/vzlinux-6-x86_64.tar.gz -O /vz/template/cache/vzlinux-6-x86_64.tar.gz
wget http://m.whatuptime.com/openvz7/template/ct/vzlinux-7-x86_64.tar.gz -O /vz/template/cache/vzlinux-7-x86_64.tar.gz
clear
sleep 2
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Alle SolusVM Template's zijn geinstalleerd!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
elif [ "$ALLEMAAL" == "N" ]; then 
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Alle SolusVM Template's zijn niet geinstalleerd!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
elif [ "$ALLEMAAL" == "n" ]; then 
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Alle SolusVM Template's zijn niet geinstalleerd!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
else
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U keuzen was niet geldig"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 5
clear
fi
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U word binnen enkelen seconden terug gestuurd naar het dashboard..."
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
bash dashboard.bash