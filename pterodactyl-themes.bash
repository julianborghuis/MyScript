#!/bin/bash
USE_PREFIX=Melding
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U kunt hier u pterodactyl theme kiezen!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
PS3="[${USE_PREFIX}] Welk theme wilt u installeren? "
options=("Kunefe" "ModernUI" "PureUI" "Klaar")
select opt in "${options[@]}"
do
    case $opt in
        "Kunefe")
	    clear
        cd /var/www/pterodactyl
	    curl -Lo Knufde.zip https://thomascaptein.nl/Themes/Knufde.zip
        unzip Knufde.zip
        rm Knufde.zip
        clear
        echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        echo -e "\e[96m[${USE_PREFIX}] U Pterodactyl Theme (Kunefe) is geinstalleerd!"
        echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        sleep 5
        clear
        echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        echo -e "\e[96m[${USE_PREFIX}] U word terug gestuurd naar het dashboard!"
        echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        sleep 3
        bash dashboard.bash
            ;;
        "ModernUI")
        cd /var/www/pterodactyl
	    curl -Lo Knufde.zip https://thomascaptein.nl/Themes/ModernUI.zip
        unzip ModernUI.zip
        rm ModernUI.zip
        clear
        echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        echo -e "\e[96m[${USE_PREFIX}] U Pterodactyl Theme (ModernUI) is geinstalleerd!"
        echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        sleep 5
        clear
        echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        echo -e "\e[96m[${USE_PREFIX}] U word terug gestuurd naar het dashboard!"
        echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        sleep 3
        bash dashboard.bash
            ;;
        "PureUI")
        cd /var/www/pterodactyl
	    curl -Lo Knufde.zip https://thomascaptein.nl/Themes/PureUI.zip
        unzip PureUI.zip
        rm PureUI.zip
        clear
        echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        echo -e "\e[96m[${USE_PREFIX}] U Pterodactyl Theme (PureUI) is geinstalleerd!"
        echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        sleep 5
        clear
        echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        echo -e "\e[96m[${USE_PREFIX}] U word terug gestuurd naar het dashboard!"
        echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
        sleep 3
        bash dashboard.bash

            ;;
        "Klaar")
        echo "Weet u zeker dat u klaar bent (Ja/Nee)"
        read Klaar
        if [ "$Klaar" == "J" ]; then
        bash dashboard.bash
        elif [ "$Klaar" == "j" ]; then
        bash dashboard.bash
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