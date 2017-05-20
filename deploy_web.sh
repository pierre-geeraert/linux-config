#!/bin/bash


#begin pushbullet
echo "beginning"
apt-get install python-pip
pip install pushbullet.py
pb set-key

#pushbullet end


#begin web server

apt-get update
pb push "end update"
apt-get install apache2 -y
pb push "end apache"
apt-get install php5 libapache2-mod-php5 -y
pb push "end php"
cd /var/www/html/
echo "<?php echo "hello world"; ?>" >> index.php
rm index.html
pb push "end conf php"
service apache2 restart
apt-get install php5-pgsql
pb push "php psql end"
#end web server
