# fbvid.sh
a simple __Bash script__ to Download public __Facebook__ Videos
<br><br>
__how to use__:<br>
* right click on the video and copy the video url
* run the script as: <br>`$ bash fbvid.sh  <copied_video_url>` 

__Commands__ :<br>
* `curl` : to download the HTML
* `grep` : to scrap the page
* `wget` : to Download the video File

__Comments__:<br>
* `testing` : I have not done that much testing that needed. 
* `forking` : Fork and improve the script if you want
* `purpose` : Educational

# Example
```console
$ `bash fbvid.sh` https://www.facebook.com/NoCopyrightSounds/videos/668942420602536/<br>
[Downloading Page...]<br>
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed<br>
100 1302k    0 1302k    0     0   196k      0 --:--:--  0:00:06 --:--:--  270k<br>
[Extracting File Name...][Extracting Link...]<br>
[Start Downloading...]<br>
--2020-04-12 10:38:21--  https://video.fccu11-1.fna.fbcdn.net/v/t42.9040-2/91150755_276358663357117_4925898511473442816_n.mp4?_nc_cat=103&_nc_sid=985c63&efg=eyJybHIiOjUwMiwicmxhIjo1MTIsInZlbmNvZGVfdGFnIjoic3ZlX3NkIn0%3D&_nc_ohc=XjkCcqGj95IAX-WbGu3&rl=502&vabr=279&_nc_ht=video.fccu11-1.fna&oh=a5b09a856c0b31a6d90e62555a8670ee&oe=5E92C4D9<br>
Resolving video.fccu11-1.fna.fbcdn.net (video.fccu11-1.fna.fbcdn.net)...<br>2405:200:1617:2885:face:b00c:0:358e, 49.44.180.146
<br>Connecting to video.fccu11-1.fna.fbcdn.net (video.fccu11-1.fna.fbcdn.net)|<br>2405:200:1617:2885:face:b00c:0:358e|:443... connected.
<br>HTTP request sent, awaiting response... 200 OK
<br>Length: 531309 (519K) [video/mp4]
<br>Saving to: ‘NCS - Rival x Egzod - Live A Lie (ft. Andreas Stone) | Facebook.mp4’

NCS - Rival x Egzod 100%[===================>] 518.86K   794KB/s    in 0.7s    

2020-04-12 10:38:23 (794 KB/s) - ‘NCS - Rival x Egzod - Live A Lie (ft. Andreas Stone) | Facebook.mp4’ saved [531309/531309]
 ```

