# Zip

Mengompres setiap file/folder menjadi file zip terpisah.

```
for i in *; do zip -r ${i%.*}.zip $i; done
```
