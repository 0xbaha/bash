# VirtualBox

## VirtualBox on Kali Linux [[1]](https://www.tolgabagci.com/en/install-virtualbox-kali-linux/) [[2]](https://computingforgeeks.com/install-virtualbox-on-kali-linux-linux-mint/)

### Download installer
```
wget https://download.virtualbox.org/virtualbox/6.1.16/virtualbox-6.1_6.1.16-140961~Debian~buster_amd64.deb
```
### Download dependencies
```
wget http://ftp.us.debian.org/debian/pool/main/libs/libsdl1.2/libsdl1.2debian_1.2.15+dfsg2-4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libv/libvpx/libvpx5_1.7.0-3+deb10u1_amd64.deb
```
### Install dependencies
```
sudo dpkg -i libsdl1.2debian_1.2.15+dfsg2-4_amd64.deb
sudo dpkg -i libvpx5_1.7.0-3+deb10u1_amd64.deb
```
### Install linux header
```
sudo apt install dkms build-essential
```
### Install the VirtualBox
```
sudo dpkg -i virtualbox*.deb
```

## Troubleshooting

### Virtualbox shared folder permissions [[1]](https://stackoverflow.com/a/26981786/4874355) [[2]](https://dev.to/rahedmir/virtualbox-cannot-access-shared-folder-items-permission-denied-fixed-59mi)

Solution:
> Run `sudo adduser $USER vboxsf` from terminal.
> 
> (On Suse it's `sudo usermod --append --groups vboxsf $USER`)
> 
> To take effect you should log out and then log in, or you may need to reboot.


