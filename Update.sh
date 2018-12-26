#!/bin/bash
# A simple script to update debian based systems
apt update
apt -y dist-ugprade
apt -y auto-remove
apt clean
apt purge -y $(dpkg -l | awk '/^rc/ { print $2 }')

