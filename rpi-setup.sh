#!/bin/bash

#
# Addition setup for Debian based Raspberry Pi Operating Systems (i.e. Raspbian)
#

# Perform initial setup
./rpi-init.sh

# Install MySQL and Python support
sudo apt-get -y install mysql-server python-mysqldb

# Secure MySQL
sudo mysql_secure_installation

# Install Apache + PHP5
sudo apt-get install -y apache2 php5 libapache2-mod-php5
sudo apt-get install -y php5-common php5-cgi php5 php5-mysql

# Install Alternative PHP Cache
sudo apt-get install -y php-apc

# Restart services
sudo service apache2 restart
sudo service mysql restart

# Cleanup local repository
sudo rm -f /var/cache/apt/*cache.bin
sudo apt-get --yes autoclean
sudo apt-get --yes clean