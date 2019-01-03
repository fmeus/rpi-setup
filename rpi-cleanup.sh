#!/bin/bash

#
# Cleanup
#

sudo rm -f /var/cache/apt/*cache.bin
sudo apt-get --yes autoclean
sudo apt-get --yes clean
