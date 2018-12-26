#!/bin/bash
# A simple script to update fedora/redhat based systems
sudo dnf clean all
sudo dnf update -y
sudo dnf upgrade -y
sudo dnf autoremove -y
