# hostnamectl

The procedure to change the computer name on Ubuntu 20.04 LTS:

Type the hostnamectl command :
```
sudo hostnamectl set-hostname newNameHere
```

Delete the old name and setup new name.

Next Edit the /etc/hosts file:
```
sudo nano /etc/hosts
```
Replace any occurrence of the existing computer name with your new hostname.

Reboot the system to changes take effect:
```
sudo reboot
```

## Reading Material 
- [Ubuntu 20.04 LTS change hostname permanently](https://www.cyberciti.biz/faq/ubuntu-20-04-lts-change-hostname-permanently/)
