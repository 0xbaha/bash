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
userdel -r USERNAME
```

---
## Bahan Bacaan
- [How to delete group in Linux using groupdel command](https://www.cyberciti.biz/faq/how-to-delete-group-in-linux-using-groupdel-command/)
- [How To Add, Delete, and Grant Sudo Privileges to Users on a Debian VPS](https://www.digitalocean.com/community/tutorials/how-to-add-delete-and-grant-sudo-privileges-to-users-on-a-debian-vps)
- [Gen 3 VPS & Dedicated Servers Help
Chat Now
Chat Now
](https://sg.godaddy.com/help/remove-a-linux-user-19158)
