# youtube-dl

## Install Guide

```
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl

# set an executable permission on the script to execute properly.
sudo chmod a+rx /usr/local/bin/youtube-dl

# update to latest version
youtube-dl -U

# example
youtube-dl <video_url>
```

---
## How to Use

**Download video using options**
```
youtube-dl -f best 'youtube_URL'
youtube-dl -f 'bestvideo+bestaudio/bestvideo+bestaudio' --merge-output-format mp4 'youtube_URL'
youtube-dl -f 'bestvideo[ext=webm]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 'youtube_URL'
youtube-dl -f 'bestvideo[ext!=webm]+bestaudio[ext!=webm]/best[ext!=webm]' 'youtube_URL'
```

**Download audio only**
```
youtube-dl -x 'youtube_URL' --audio-format best
youtube-dl --extract-audio --audio-format mp3 `youtube_URL`
```

## Example
```
youtube-dl -f 'bestvideo[ext=webm]+bestaudio[ext=m4a]' --merge-output-format mp4 https://www.youtube.com/watch?v=fNX6Gu2F7A8
```


**Note**: `youtube_URL` dapat berupa *playlist*

## Reading Materials
- [Download YouTube Videos in Linux Command Line](https://itsfoss.com/download-youtube-linux/)
- [youtube-dl DASH video and audio in highest quality without human intervention](https://stackoverflow.com/a/31631704)
