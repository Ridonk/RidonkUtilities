#!/bin/bash
# A simple script to update debian based systems
sudo apt update
sudo apt -y dist-upgrade
sudo apt -y auto-remove
sudo apt clean
sudo apt purge -y $(dpkg -l | awk '/^rc/ { print $2 }')
