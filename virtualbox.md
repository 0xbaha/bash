# VirtualBox

## Download VirtualBox Installer
```
wget https://download.virtualbox.org/virtualbox/6.1.16/virtualbox-6.1_6.1.16-140961~Debian~buster_amd64.deb
```
## Download dependance
```
wget http://ftp.us.debian.org/debian/pool/main/libs/libsdl1.2/libsdl1.2debian_1.2.15+dfsg2-4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libv/libvpx/libvpx5_1.7.0-3+deb10u1_amd64.deb
```

## Install dependance
```
sudo dpkg -i libsdl1.2debian_1.2.15+dfsg2-4_amd64.deb
sudo dpkg -i libvpx5_1.7.0-3+deb10u1_amd64.deb
```

## Install Linux Header
```
sudo apt install dkms build-essential
```

## Install the VirtualBox
```
sudo dpkg -i virtualbox*.deb
```

## Bahan Bacaan
- [How to Install VirtualBox 6.1.2 on Kali Linux 2020.1](https://www.tolgabagci.com/en/install-virtualbox-kali-linux/)
- [How To Install VirtualBox 6.1 on Kali Linux / Linux Mint](https://computingforgeeks.com/install-virtualbox-on-kali-linux-linux-mint/)
