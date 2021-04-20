# Zip

Mengompres setiap file/folder menjadi file zip terpisah.

```
for file in *; do zip ${file%.*}.zip $file; done
```
