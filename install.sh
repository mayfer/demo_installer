#!/bin/bash

# assuming ran by root
adduser --disabled-password --gecos "" demo
cp -r demo /home/demo/
apt-get -y install apache2 libapache2-mod-wsgi python-django

IP=`wget -qO- http://ipecho.net/plain`
sed -i "s/{ip}/$IP/g" demo.conf

cp demo.conf /etc/apache2/sites-available/
ln -s /etc/apache2/sites-available/demo.conf /etc/apache2/sites-enabled/demo.conf
service apache2 restart

