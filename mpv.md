# MPV

## Key commands: https://mpv.io/manual/master/#keyboard-control
    f       : Fullscreen.
    Shift+# : Switch audio channel.
    ( )     : Left, right audio channel.
    s       : Take screenshot.
    Ctrl+t  : Toggle stay-on-top. Play video on top of other windows.
    j       : Cycle through the available subtitles.
    RIGHT   : Next 10 seconds.
    LEFT    : Previous 10 seconds.
    UP      : Next minute.
    DOWN    : Previous minute.
    PGUP    : Next chapter.
    PGDWN   : Previous chapter.
 
## Play video fullscreen.
    mpv --fs videofile.avi
 
## Play video at 70% of the volume.
    mpv --volume=70 videofile.avi
 
## Play video at specific time.
    mpv --start=00:01:03 --end=00:02:01 videofile.avi
 
##  Play video at 50% of your screen size.
    mpv --autofit=50% videofile.avi
 
## Repeat / Loop video
    mpv --loop=4 videofile.avi
    mpv --loop=inf videofile.avi
 
## Show runtime by default.
    mpv --osd-level=2 videofile.avi
    # Or, put osd-level=2 in ~/.config/mpv/mpv.conf.
    # Level 3 will show total video length.
 
## Find and play videos: https://github.com/xuanngo2001/cust-live-deb/issues/268
    mpv -playlist <(find "$PWD" -type f)
    # $PWD is required. Otherwise, it'll append relative path to the file descriptor's location.
    #   e.g: "/dev/fd/./path/to/video-file.avi", which would fail to open.  
 
## Play devices.
    mpv dvd://1     --dvd-device=/dev/sr0/or/iso/
    mpv dvdnav://2  --dvd-device=/dev/sr0/or/iso/
    mpv bd://       --bluray-device=/path/to/bd/
    mpv cdda://     --cdrom-device=/path/to/bd/

## Webcam.
    mpv av://v4l2:/dev/video0
 
## Extract video file at a specific time
    mpv videofile.avi -o excerptvideo.avi --start=00:01:00 --end=00:03:35
 
## Extract audio from video file
    mpv videofile.avi -o audiofile.mp3 --no-video
 
## Extract audio from video file at a specific time
    mpv videofile.avi -o audiofile.mp3 --no-video --start=00:01:00 --end=00:03:35
 
## Extract audio from video file at a specific time for a relative length.
    mpv videofile.avi -o audiofile.mp3 --no-video --start=0 --length=10
 
## Take screenshot a specific time.(--no-terminal: turn off output)
    mpv videofile.avi --no-audio --vo=image --start=2% --frames=1 -o output.jpg
 
## Encoding: https://github.com/mpv-player/mpv/blob/master/DOCS/encoding.rst
    cat /etc/mpv/encoding-profiles.conf  # All preset profiles.
    mpv infile -o outfile.avi --vf=fps=25 -ovc mpeg4   -ovcopts qscale=4                              -oac libmp3lame -oacopts ab=128k
    mpv infile -o outfile.mkv             -ovc libx264 -ovcopts preset=medium,crf=23,profile=baseline -oac libvorbis  -oacopts qscale=3
    mpv infile -o outfile.mp4             -ovc libx264 -ovcopts preset=medium,crf=23,profile=baseline -oac aac        -oacopts ab=128k
    mpv infile -o outfile.mkv -of webm    -ovc libvpx  -ovcopts qmin=6,b=1000000k                     -oac libvorbis  -oacopts qscale=3
 
## Get duration
    mpv video.avi --no-audio --vo=null --frames=1 2>&1 >/dev/null | grep '^V: ' | head -n1 | sed 's|.*/||' | sed 's/(.*//' | xargs
 
## Print video info
    find . -type f -print0 | xargs -0 mpv --no-audio --vo=null --frames=1
 
## Subtitle
    mpv --sub-visibility=no video.avi
    mpv --sid=no            video.avi
    
    
    
## Reading Material
- [MPV player cheatsheet](https://openwritings.net/pg/bash/mpv-player-cheatsheet)
