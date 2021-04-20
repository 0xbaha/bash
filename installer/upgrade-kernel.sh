# checking the version now
echo ">> Checking the current version..."
echo ">> Current version:"
uname -sr

# create temporary folder
echo ">> Creating temporary folder..."
mkdir temp_upgrade_kernel
cd    temp_upgrade_kernel

# download latest kernel version
# (latest stable version: v4.14)
echo ">> Downloading the latest kernel version..."
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.14/linux-headers-4.14.0-041400_4.14.0-041400.201711122031_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.14/linux-headers-4.14.0-041400-generic_4.14.0-041400.201711122031_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.14/linux-image-4.14.0-041400-generic_4.14.0-041400.201711122031_amd64.deb

# install the kernel
echo ">> Installing the kernel..."
sudo dpkg -i *.deb
