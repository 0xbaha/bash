# Cuckoo Setup: Host Machine

## Specification 
### Specification of Host Machine
- Ubuntu Desktop 18.04 (latest version recommended)
- 16Gb of RAM or higher
- 500 Gb hard disk (SSD for better processing)
- Virtual Box v5.2 (latest version)
- Cuckoo Sandbox v2.0.6 (latest version)

### Specification of Guest Machine
- Windows 7 Professional 64 bit
- An old vulnerable version of Microsoft Office, Adobe Reader, Flash Player, Java, etc..

---
## Step 1 - Update System
Perform a full update of your system and upgrade your Linux kernels (if any available)

```
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
```

## Step 2 - Install the required dependencies
```
sudo apt install python python-pip python-dev libffi-dev libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev -y
sudo apt install python-virtualenv python-setuptools -y
sudo apt install libjpeg-dev zlib1g-dev -y
sudo apt install libxml2-dev libxslt1-dev libevent-dev libpcre3 libpcre3-dev libtool libpcre++-dev g++ -y
sudo apt install git automake dkms unzip wget python-sqlalchemy python-bson python-dpkt python-jinja2 -y
sudo apt install python-magic python-mysqldb python-gridfs python-bottle python-pefile python-chardet -y
```

## Step 3 - Installing Python3, etc.
### Installing Python3
```
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.7.1/Python-3.7.1.tgz
sudo tar -xvf Python-3.7.1.tgz
cd Python-3.7.1
sudo ./configure
sudo make && make install
python3 --version  # to check Python3 version
```
### Installing Pillow
```
pip install --upgrade pip
sudo -H pip install pillow
```
### Installing MongoDB
```
sudo apt-get install mongodb -y
```
### Installing PostgreSQL
```
sudo apt-get install postgresql libpq-dev -y
```

## Step 4 - Installing tcpdump
```
sudo apt-get install tcpdump apparmor-utils -y
sudo aa-disable /usr/sbin/tcpdump
sudo setcap cap_net_raw,cap_net_admin=eip /usr/sbin/tcpdump
getcap /usr/sbin/tcpdump
sudo -H pip install lxml
sudo -H pip install cybox==2.0.1.4    
sudo -H pip install maec==4.0.1.0
sudo -H pip install "Django<2"
sudo reboot now
```
### After Restart
```
sudo apt-get install ssdeep python-pyrex subversion libfuzzy-dev -y
```
