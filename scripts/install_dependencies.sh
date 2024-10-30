#!/bin/bash

apt-get update
apt-get upgrade
apt-get dist-upgrade

add-apt-repository ppa:ondrej/apache2
apt-get update
apt-get upgrade
apt-get install apache2

add-apt-repository ppa:ondrej/php
apt-get update
apt-get upgrade
apt-get install php8.3

apt-get install php8.3-curl
apt-get install php8.3-mbstring
apt-get install php8.3-xml
apt-get install php8.3-zip
apt-get install php8.3-mysql
apt-get install php8.3-apcu
apt-get install php8.3-intl
apt-get install php8.3-soap

apt-get install build-essential

cd /home/ubuntu
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

cd /var/www/codepipeline
composer install --no-dev --optimize-autoloader --no-interaction
