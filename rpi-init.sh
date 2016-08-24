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

# Correct timezone
sudo dpkg-reconfigure tzdata

# Install new versions for all installed packahges
sudo apt-get upgrade
