#!/bin/bash
echo 'Installing MySQL...'
apt install -y mysql-server mysql-client libmysqlclient-dev
echo 'Installing Apache2...'
apt install -y apache2 libapache2-mod-php
echo 'Installing PHP...'
apt install -y php php-mysql php-fpm php-mbstring php-gettext
echo 'Installing PhpMyAdmin...'
apt install -y phpmyadmin
ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
echo 'Installing MySQL...'
pwsh config-mysql.ps1