# Wget

### All Files Located On A Web Page
```
wget -r -A.pdf http://www.example.com/page-with-pdfs.htm
```

### Every PDF Including PDF’s On Secondary Pages
```
wget -r -l1 -A.pdf http://www.example.com/page-with-pdfs.htm
```

### Files from a List
```
wget -i your_list
```

### Actual name
```
wget --content-disposition https://www.syntevo.com/downloads/smartgit/smartgit-20_1_2.deb
```

---
## Reference
1. https://www.question-defense.com/2010/12/22/use-wget-to-download-all-pdf-files-listed-on-a-web-page-wget-all-pdf-files-in-a-directory
1. http://askubuntu.com/questions/103623/download-files-from-a-list
1. [Mirror Site 1 Level Deep](https://superuser.com/questions/341960/how-do-you-use-wget-to-mirror-a-site-1-level-deep-recovering-js-css-resources)
1. [fetch a directory with arbitrary files in it](https://stackoverflow.com/questions/273743/using-wget-to-recursively-fetch-a-directory-with-arbitrary-files-in-it)
1. [Force wget to use actual filename](https://askubuntu.com/questions/77711/force-wget-to-use-actual-filename)
