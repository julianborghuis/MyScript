#!/bin/bash
USE_PREFIX=Melding
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U heeft gekozen voor Pterodactyl"
echo -e "\e[96m[${USE_PREFIX}] Dit process kan enkel minuten duuren..."
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 5 
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Keuzen menu"
echo -e "\e[96m[${USE_PREFIX}] Wilt u nog een anderen software er bij installeren zoals Netdata/PhpMyAdmin"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Wilt u netdata installeren? (Ja/Nee)"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
read NETDATA_CHOICE
if [ "$NETDATA_CHOICE" == "J" ]; then
echo "NETDATA COMMANDS"
echo "Netdata is geinstalleerd"
elif [ "$NETDATA_CHOICE" == "j" ]; then
echo "NETDATA COMMANDS"
echo "Netdata is geinstalleerd"
elif [ "$NETDATA_CHOICE" == "N" ]; then 
echo "Geen netdata installatie"
elif [ "$NETDATA_CHOICE" == "n" ]; then 
echo "Geen netdata installatie"
else
    echo "U keuzen was niet geldig"
fi
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Wilt u phpmyadmin installeren? (Ja/Nee)"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
read PHPMYADMIN_CHOICE
if [ "$PHPMYADMIN_CHOICE" == "J" ]; then
echo "PHPMYADMIN COMMANDS"
elif [ "$PHPMYADMIN_CHOICE" == "j" ]; then
echo "PHPMYADMIN COMMANDS"
eecho "Phpmyadmin is geinstalleerd"
elif [ "$PHPMYADMIN_CHOICE" == "N" ]; then 
echo "Geen phpmyadmin installatie"
elif [ "$PHPMYADMIN_CHOICE" == "n" ]; then 
echo "Geen phpmyadmin installatie"
else
    echo "U keuzen was niet geldig"
fi
clear
USE_SSL=false
MYSQL_PASSWORD=0
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Dit process kan enkel minuten duuren..."
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
apt update
yes | sudo apt-get install nano
service apache2 stop
yes | sudo apt-get install apt-transport-https
echo "Selected option 1) Pterodactyl 0.7.5 + Daemon (Latest version) (Requirement: Ubuntu 16.04) will be start in 5 seconds"
sleep 5
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Welk domeinnaam wilt u gebruiken? (FQDN)"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
read FQDN
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Wilt u ssl gebruiken? (Dit kan enkel met een domeinaam dus niet met een ipv4) (Ja/Nee)"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
read USE_SSL_CHOICE
if [ "$USE_SSL_CHOICE" == "J" ]; then
    USE_SSL=true
elif [ "$USE_SSL_CHOICE" == "j" ]; then
    USE_SSL=true
elif [ "$USE_SSL_CHOICE" == "N" ]; then 
    USE_SSL=false
elif [ "$USE_SSL_CHOICE" == "n" ]; then 
    USE_SSL=false
else
    echo "Answer not found, no SSL will be used."
    USE_SSL=false
fi
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Genereerd MSQL Wachtwoord"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
MYSQL_PASSWORD=`head -c 10 /dev/random | base64`
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Vereiste afhankelijkheden installeren"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
apt -y install software-properties-common curl
LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
add-apt-repository -y ppa:chris-lea/redis-server
curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | sudo bash
apt update
apt-add-repository universe
apt -y install php7.2 php7.2-cli php7.2-gd php7.2-mysql php7.2-pdo php7.2-mbstring php7.2-tokenizer php7.2-bcmath php7.2-xml php7.2-fpm php7.2-curl php7.2-zip mariadb-server nginx tar unzip git redis-server
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Installeert composer"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Download paneel bestanden"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
mkdir -p /var/www/pterodactyl
cd /var/www/pterodactyl
curl -Lo panel.tar.gz https://github.com/pterodactyl/panel/releases/download/v0.7.17/panel.tar.gz
tar --strip-components=1 -xzvf panel.tar.gz
chmod -R 755 storage/* bootstrap/cache/
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Database setupen"
echo -e "\e[96m[${USE_PREFIX}] Voor het wachtwoord te vragen, Klik op enter"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
mysql -u root -e "CREATE USER 'pterodactyl'@'127.0.0.1' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -u root -e "CREATE DATABASE panel;"
mysql -u root -e "GRANT ALL PRIVILEGES ON panel.* TO 'pterodactyl'@'127.0.0.1' WITH GRANT OPTION;"
mysql -u root -e "FLUSH PRIVILEGES;"
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Zet data in .env bestand"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
cp .env.example .env
composer install --no-dev --optimize-autoloader
php artisan key:generate --force
php artisan p:environment:database --host=127.0.0.1 --port=3306 --database=panel --username=pterodactyl --password=$MYSQL_PASSWORD
if [ "$USE_SSL" == true ]; then
php artisan p:environment:setup -n --author=systeem@mynode.nl --url=https://$FQDN --timezone=Europe/Amsterdam --cache=redis --session=database --queue=redis --redis-host=127.0.0.1 --redis-pass= --redis-port=6379
elif [ "$USE_SSL" == false ]; then
php artisan p:environment:setup -n --author=systeem@mynode.nl --url=http://$FQDN --timezone=Europe/Amsterdam --cache=redis --session=database --queue=redis --redis-host=127.0.0.1 --redis-pass= --redis-port=6379
fi
sudo systemctl enable --now redis-server
sed -i -e "s/MAIL_DRIVER=smtp/MAIL_DRIVER=log/g" /var/www/pterodactyl/.env
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Database instellen"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
php artisan migrate --seed --force
sleep 4
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Maakt gebruiker aan"
echo -e "\e[96m[${USE_PREFIX}] Klant & Systeem account aangemaakt!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
php artisan p:user:make --email=systeem@mynode.nl --username=mynode --name-first=mynode --name-last=mynode --password=CreatedByMyNode --admin=1
php artisan p:user:make --email=myklant@mynode.nl --username=MyKlant --name-first=MyKlant --name-last=MyKlant --password=CreatedByMyNode --admin=1
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Locatie aanmaken"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
php artisan p:location:make --short=NL --long="Gehost bij MyNode."
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Permissies instellen"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
chown -R www-data:www-data * 
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Queue Werker installeren"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
curl -o /etc/systemd/system/pteroq.service https://raw.githubusercontent.com/Fabian-Ser/pterodactylinstallscript/master/pteroq.service
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Pterodactyl Aanzetten"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 2
sudo systemctl enable --now pteroq.service
clear
if [ "$USE_SSL" == true ]; then
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Stopt sommige service's"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 2
systemctl stop nginx
service nginx stop
service apache2 stop
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Installeer SSL certificaat"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
yes | sudo add-apt-repository ppa:certbot/certbot
sudo apt update
yes | sudo apt install certbot
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] SSL-configuratie (selecteer 1, voer uw e-mailadres in, kies A, kies N)"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
certbot certonly -d ${FQDN}
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Creer Pterodactyl.conf Bestand"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
curl -o /etc/nginx/sites-available/pterodactyl.conf https://raw.githubusercontent.com/Fabian-Ser/pterodactylinstallscript/master/nginxssl0.7.conf
sed -i -e "s/<domain>/${FQDN}/g" /etc/nginx/sites-available/pterodactyl.conf
sudo ln -s /etc/nginx/sites-available/pterodactyl.conf /etc/nginx/sites-enabled/pterodactyl.conf
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Creer Pterodactyl.conf Bestand"
elif [ "$USE_SSL" == false ]; then
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Stopt sommige service's"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 2
systemctl stop nginx
service nginx stop
service apache2 stop
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Creer Pterodactyl.conf Bestand"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
curl -o /etc/nginx/sites-available/pterodactyl.conf https://raw.githubusercontent.com/Fabian-Ser/pterodactylinstallscript/master/nginxnonssl0.7.conf
sed -i -e "s/<domain>/${FQDN}/g" /etc/nginx/sites-available/pterodactyl.conf
sudo ln -s /etc/nginx/sites-available/pterodactyl.conf /etc/nginx/sites-enabled/pterodactyl.conf
clear
fi
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Start Webserver"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
service apache2 stop
service nginx start
systemctl start nginx
systemctl restart nginx
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Einde paneel installatie."
echo -e "\e[96m[${USE_PREFIX}] Te beginnen met de daemon-installatie in 5 seconden!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 5
clear
echo -e "\e[96m[${USE_PREFIX}] Beginnend met docker-installatie"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
cd 
curl -sSL https://get.docker.com/ | CHANNEL=stable bash
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Start docker"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 2
systemctl enable docker
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Installeer NodeJS"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt -y install nodejs make gcc g++
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Daemon-bestanden installeren"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
mkdir -p /srv/daemon /srv/daemon-data
cd /srv/daemon
curl -L https://github.com/pterodactyl/daemon/releases/download/v0.6.13/daemon.tar.gz | tar --strip-components=1 -xzv
npm install --only=production
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Installeer WINGS"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
curl -o /etc/systemd/system/wings.service https://raw.githubusercontent.com/Fabian-Ser/pterodactylinstallscript/master/wings0.7.service
systemctl enable --now wings
systemctl stop wings
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Daemon is geïnstalleerd, er hoeft alleen een knooppunt op het paneel te worden gemaakt zodra u het knooppunt hebt gemaakt, u moet de configuratie in een bestand core.json invoegen in de map / srv / daemon / config / waarna u de daemon kunt starten met systemctl start vleugels"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] MYSQL Database Wachtwoord: ${tmp_pass:0:10}"
echo -e "\e[96m[${USE_PREFIX}] Klant & Systeem account aangemaakt!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Pterodactyl Klanten Login:"
echo -e "\e[96m[${USE_PREFIX}] Gebruikersnaam: MyKlant"
echo -e "\e[96m[${USE_PREFIX}] Wachtwoord: CreatedByMyNode"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Pterodactyl MyNode Login:"
echo -e "\e[96m[${USE_PREFIX}] Gebruikersnaam: mynode"
echo -e "\e[96m[${USE_PREFIX}] Wachtwoord: CreatedByMyNode"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] Kopier deze gevens en sla ze goed op! Dit bericht/Bestand word over 10 seconden verwijderd"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 10
clear
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "\e[96m[${USE_PREFIX}] U word terug gestuurd naar het dashboard!"
echo -e "\e[39m- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
sleep 3
bash dashboard.bash
