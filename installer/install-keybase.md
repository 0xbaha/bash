#!/bin/bash

# install Keybase on Kali 2021.2

# download depedencies (check newest version)
wget http://ftp.br.debian.org/debian/pool/main/libi/libindicator/libindicator7_0.5.0-4_amd64.deb
wget http://ftp.br.debian.org/debian/pool/main/liba/libappindicator/libappindicator1_0.4.92-8_amd64.deb

# install depedencies
sudo apt install ./libindicator7_0.5.0-4_amd64.deb
sudo apt install ./libappindicator1_0.4.92-8_amd64.deb

# download and install keybase
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
sudo apt install ./keybase_amd64.deb

# run keybase
run_keybase
