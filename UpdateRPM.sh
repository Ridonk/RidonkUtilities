#!/bin/bash
sudo dnf clean all
sudo dnf update -y
sudo dnf upgrade -y
sudo dnf autoremove -y
