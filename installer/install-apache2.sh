# update list of available packages
sudo apt-get update

# install apache2
sudo apt-get install apache2 -y
sudo apache2ctl configtest

sudo vi /etc/apache2/apache2.conf
# add this code:
# ServerName server_domain_or_IP

sudo apache2ctl configtest
sudo systemctl restart apache2


# source:
# https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-16-04
