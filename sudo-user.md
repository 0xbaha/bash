# Create/Delete Sudo User

## Create the user
```
sudo adduser USERNAME
```
## Add to sudo group
```
sudo usermod -aG sudo USERNAME
```
## Testing
```
su - USERNAME
```
## Delete (with home folder)
```
userdel -r user's USERNAME
```

---
## Bahan Bacaan
- https://www.cyberciti.biz/faq/how-to-delete-group-in-linux-using-groupdel-command/
- https://www.digitalocean.com/community/tutorials/how-to-add-delete-and-grant-sudo-privileges-to-users-on-a-debian-vps
- https://sg.godaddy.com/help/remove-a-linux-user-19158
