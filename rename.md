# Prefiks
## Menambahkan Prefiks
- `document.pdf` menjadi `MyPrefix_document.pdf`
- `Judul Buku.pdf` menjadi `[Ebook Tutorial] Judul Buku.pdf`

```
rename 's/^/MyPrefix_/' *
rename 's/^/[Ebook Tutorial] /' *
```

## Menghapus Prefiks
- `CD RIP 01 Song.mp3` menjadi `01 Song.mp3`
- `[Ebook Tutorial] Judul Buku.pdf` menjadi `Judul Buku.pdf`
```
rename 's/^CD RIP //' *
rename 's/^\[Ebook Tutorial\] //' *
```

# Sufiks
## Menambahkan Sufiks
- `document.pdf` menjadi `document_MySuffix.pdf`
```
rename 's/$/_MySuffix/' *
```

## Menghapus Sufiks
- `document_MySuffix.pdf` menjadi `document.pdf`
```
rename 's/\_MySuffix$//' *
```

# Bahan Bacaan
- https://askubuntu.com/questions/58546/how-to-easily-rename-files-using-command-line
- https://unix.stackexchange.com/questions/196575/cannot-rename-files-with-on-its-name/196590#196590
