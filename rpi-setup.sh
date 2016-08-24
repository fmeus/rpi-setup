#!/bin/sh

#
# Addition setup for Debian based Raspberry Pi Operating Systems (i.e. Raspbian)
# 

# Update package lists
sudo apt-get update

# Install git client
sudo apt-get -y install git

# Install screen
sudo apt-get -y install screen

# Install ahavi-daemon (seems to be installed by default now)
# sudo apt-get install avahi-daemon

# Install MySQL
sudo apt-get -y install mysql-server

# Add MySQL support for Python
sudo apt-get -y install python-mysqldb

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

# Correct timezone
sudo dpkg-reconfigure tzdata

# Install new versions for all installed packahges
sudo apt-get upgrade
