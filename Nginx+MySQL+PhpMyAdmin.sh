#!/bin/bash
echo '正在安装MySQL...'
apt install -y mysql-server mysql-client libmysqlclient-dev
echo '正在安装Nginx...'
apt install -y nginx
echo '正在安装PHP...'
apt install -y php php-mysql php-fpm php-mbstring php-gettext
echo '正在安装PhpMyAdmin...'
apt install -y phpmyadmin
ln -s /usr/share/phpmyadmin /var/www/phpmyadmin
echo '正在配置MySQL...'
python config-mysql.py