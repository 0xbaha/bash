# SSH

## Salin Kunci Publik
Salin kunci publik ke remote server
```
ssh-copy-id USERNAME@REMOTE_HOST
```

Cara lain:

Buat file `~/.ssh/authorized_keys` di remote server, kemudian copy-paste Public Key (local computer).

Gunakan editor `nano` daripada `vi`. 

## Disabling Password Authentication
Ubah file `/etc/ssh/sshd_config` di remote server

```
sudo nano /etc/ssh/sshd_config
```

Ganti dari:

```
#PasswordAuthentication yes
```

menjadi:

```
PasswordAuthentication no
```

Kemudian
```
sudo service ssh restart
```
atau
```
sudo systemctl restart ssh
```

## Disable SSH logins for root

After you create a normal user, you can disable SSH logins for the root account. To do this, follow these steps:

1. Log in to the server as root using SSH.
1. Open the /etc/ssh/sshd_config file in your preferred text editor (nano, vi, etc.).
1. Locate the following line:
    ```
    PermitRootLogin yes
    ```
1. Modify the line as follows:
    ```
    PermitRootLogin no
    ```
1. Add the following line. Replace username with the name of the user you created in the previous procedure:
    ```
    AllowUsers username
    ```
    ```
    This step is crucial. If you do not add the user to the list of allowed SSH users, you will be unable to log in to your server!
    ```
1. Save the changes to the `/etc/ssh/sshd_config` file, and then exit the text editor.
1. Restart the SSH service using the appropriate command for your Linux distribution:
    - For CentOS and Fedora, type:
      ```
      service sshd restart
      ```
    - For Debian and Ubuntu, type:
      ```
      service ssh restart
      ```
1. While still logged in as root, try to log in as the new user using SSH in a new terminal window. You should be able to log in. If the login fails, check your settings. Do not exit your open root session until you are able to log in as the normal user in another window.

## Change SSH Port

If you want to change the default SSH port in Ubuntu, perform the following steps with root privileges:

1. Open the /etc/ssh/sshd_config file and locate the line:
    ```
    #Port 22
    ```
1. Then, uncomment (Remove the leading # character) it and change the value with an appropriate port number (for example, 22000):
    ```
    Port 22000
    ```
1. Restart the SSH server:
    ```
    systemctl restart sshd
    ```
1. After that, run the netstat command and make sure that the ssh daemon now listen on the new ssh port:
    ```
    netstat -tulpn | grep ssh
    ```
1. When connecting to the server using the ssh command, you need to specify the port to connect using the -p flag:
    ```
    ssh -p 22000 192.168.1.100
    ```
1. Note that if the Firewall is enabled, you need to add a rule to allow new SSH

---
## Bahan Bacaan
- [2 Simple Steps to Set up Passwordless SSH Login on Ubuntu](https://www.linuxbabe.com/linux-server/setup-passwordless-ssh-login)
- [How to Set Up SSH Keys on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-ubuntu-1804)
- [How to disable SSH logins for the root account](https://www.a2hosting.com/kb/getting-started-guide/accessing-your-account/disabling-ssh-logins-for-root)
- [How to Change SSH Port in Ubuntu 18.04](https://www.ubuntu18.com/ubuntu-change-ssh-port/)
