#!/bin/bash
USE_PREFIX=Melding
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Welkom! Op het installatie Systeem"
echo -e "\e[96m[${USE_PREFIX}] Made By  T h o m a s C a p t e i n"
echo -e "\e[96m[${USE_PREFIX}] © Copyright MrThomas 2019-2020\e[39m"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 5
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U word zo snel mogelijk naar het dashboard verstuurt!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 1
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U kunt hier u installatie programma kiezen!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
PS3="[${USE_PREFIX}] Welk software wilt u installeren? "
options=("Pterodactyl" "Pterodactyl-Theme" "Azurecast" "SolusVM" "SolusVM-versie" "phpmyadmin" "netdata" "Klaar")
select opt in "${options[@]}"
do
    case $opt in
        "Pterodactyl")
	    clear
	    wget https://thomascaptein.nl/pterodactyl.bash && bash pterodactyl.bash
        echo "Installtie Klaar!"
            ;;
        "Pterodactyl-Theme")
	    clear
        wget https://thomascaptein.nl/pterodactyl-themes.bash && bash pterodactyl-themes.bash
        echo "Installtie Klaar!"
            ;;
        "Azurecast")
	    clear
	    bash azurecast.bash
        wget https://thomascaptein.nl/azurecast.bash && bash azurecast.bash
        echo "Installtie Klaar!"
            ;;
        "SolusVM")
	    clear
        wget https://thomascaptein.nl/solusvm.bash && bash solusvm.bash
        echo "Installtie Klaar!"
            ;;
        "SolusVM-versie")
	    clear
        wget https://thomascaptein.nl/solusvm-versie.bash && bash solusvm-versie.bash
        echo "Installtie Klaar!"
            ;;
        "phpmyadmin")
	    clear
        wget https://thomascaptein.nl/phpmyadmin.bash && bash phpmyadmin.bash
        echo "Installtie Klaar!"
            ;;
        "netdata")
	    clear
        wget https://thomascaptein.nl/netdata.bash && bash netdata.bash
        echo "Installtie Klaar!"
            ;;
        "Klaar")
        echo "Weet u zeker dat u klaar bent (Ja/Nee)"
        read Klaar
        if [ "$Klaar" == "J" ]; then
        echo "U bent klaar met de installatie CMD word afgesloten binnen 15 seconden"
        sleep 15
        exit
        elif [ "$Klaar" == "j" ]; then
        echo "U bent klaar met de installatie CMD word afgesloten binnen 15 seconden"
        sleep 15
        exit
        elif [ "$Klaar" == "N" ]; then 
        echo "U bent zo te zien nog niet klaar"
        elif [ "$Klaar" == "n" ]; then 
        echo "U bent zo te zien nog niet klaar"
        else
            echo "U keuzen was te onduidelijk"
        fi        
            ;;
        *) echo "invalid option $REPLJ";;
    esac
done