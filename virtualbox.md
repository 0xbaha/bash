# VirtualBox

VirtualBox on Kali Linux [[1]](https://www.tolgabagci.com/en/install-virtualbox-kali-linux/) [[2]](https://computingforgeeks.com/install-virtualbox-on-kali-linux-linux-mint/)

1. Download installer
    ```bash
    wget https://download.virtualbox.org/virtualbox/6.1.16/virtualbox-6.1_6.1.16-140961~Debian~buster_amd64.deb
    ```
1. Download dependencies
    ```bash
    wget http://ftp.us.debian.org/debian/pool/main/libs/libsdl1.2/libsdl1.2debian_1.2.15+dfsg2-4_amd64.deb
    wget http://ftp.us.debian.org/debian/pool/main/libv/libvpx/libvpx5_1.7.0-3+deb10u1_amd64.deb
    ```
1. Install dependencies
    ```bash
    sudo dpkg -i libsdl1.2debian_1.2.15+dfsg2-4_amd64.deb
    sudo dpkg -i libvpx5_1.7.0-3+deb10u1_amd64.deb
    ```
1. Install linux header
    ```bash
    sudo apt install dkms build-essential
    ```
1. Install the VirtualBox
    ```bash
    sudo dpkg -i virtualbox*.deb
    ```

## Troubleshooting

Virtualbox shared folder permissions [[3]](https://stackoverflow.com/a/26981786/4874355) [[4]](https://dev.to/rahedmir/virtualbox-cannot-access-shared-folder-items-permission-denied-fixed-59mi)
> - Run `sudo adduser $USER vboxsf` from terminal.
> - (On Suse it's `sudo usermod --append --groups vboxsf $USER`)
> - To take effect you should log out and then log in, or you may need to reboot.


