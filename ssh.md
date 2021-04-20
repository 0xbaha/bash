# SSH

## Salin Kunci Publik
Salin kunci publik ke remote server
```
ssh-copy-id USERNAME@REMOTE_HOST
```

## Disabling Password Authentication
Ubah file `/etc/ssh/sshd_config` di remote server
```
sudo nano /etc/ssh/sshd_config
```

Ganti dari:
```
...
#PasswordAuthentication yes
...

```
menjadi:
```
...
PasswordAuthentication no
...
ChallengeResponseAuthentication no
...
```

Kemudian
```
sudo service ssh restart
```
atau
```
sudo systemctl restart ssh
```

---
## Bahan Bacaan
- https://www.linuxbabe.com/linux-server/setup-passwordless-ssh-login
- https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-ubuntu-1804
