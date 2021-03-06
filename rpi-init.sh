#!/bin/bash

# Function
# --------
# Perform additional setup for Debian bases Raspberry Pi OS (i.e. Raspbian)
# ======================================================================
# Parameters
# ----------
# 1 - New hostname for the Raspberry Pi
# ======================================================================

# Update package lists and upgrade packages
sudo apt-get update
sudo apt-get -y upgrade

# Install git client and screen
sudo apt-get -y install git screen

# Cleanup local repository
sudo rm -f /var/cache/apt/*cache.bin
sudo apt-get --yes autoclean
sudo apt-get --yes clean

# Set hostname
sudo raspi-config nonint do_hostname %1.local

# Activate SPI and I2C (0=Enabled,1=Disabled)
sudo raspi-config nonint do_spi 0
sudo raspi-config nonint do_i2c 0

# Update locale to en_US.UTF-8
sudo echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
sudo locale-gen en_US.UTF-8
sudo echo "LANG=en_US.UTF-8" > /etc/default/locale
sudo update-locale en_US.UTF-8

# Set timezone to Europe/Amsterdam
sudo timedatectl set-timezone Europe/Amsterdam

# Change password for pi-account
passwd pi