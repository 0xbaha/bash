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
wget -i your_list.txt
```

### Files from a List (Background Process)
```
wget -b -i your_list.txt
```

#### Continue/resume broken download [[1]](https://www.cyberciti.biz/tips/wget-resume-broken-download.html) 
```
wget -c -b -i your_list.txt
```

#### User Agent in Wget [[2]](https://www.networkinghowtos.com/howto/change-the-user-agent-in-wget/)
Ketika dapat mengunduh melalui browser, tetapi gagal saat menggunakan `wget`.
```
wget -d -b -i -U "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36" "https://DOMAIN.NAM/SUB-URL/EXAMPLE-FILE-WILL-BE-DOWNLOAD.iso?md5=klFg9hj-jcWcIDkYCRKs8Q&expires=1627569342"
```

### Kill background process [[3]](https://stackoverflow.com/a/3410742/4874355)
```
pkill -9 wget
```

### Actual name
```
wget --content-disposition https://www.syntevo.com/downloads/smartgit/smartgit-20_1_2.deb
```

---
## Reference
1. [Use wget To Download All PDF Files Listed On A Web Page, wget All PDF Files In A Directory](https://www.question-defense.com/2010/12/22/use-wget-to-download-all-pdf-files-listed-on-a-web-page-wget-all-pdf-files-in-a-directory)
1. [Download files from a list](http://askubuntu.com/questions/103623/download-files-from-a-list)
1. [Mirror Site 1 Level Deep](https://superuser.com/questions/341960/how-do-you-use-wget-to-mirror-a-site-1-level-deep-recovering-js-css-resources)
1. [fetch a directory with arbitrary files in it](https://stackoverflow.com/questions/273743/using-wget-to-recursively-fetch-a-directory-with-arbitrary-files-in-it)
1. [Force wget to use actual filename](https://askubuntu.com/questions/77711/force-wget-to-use-actual-filename)
