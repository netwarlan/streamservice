NETWAR RTMP/ENCODING STACK
==========================
The following code is the code used to make the RTMP/Encoding systems work at NETWAR.
The `BUILD` directory is so that you can modify the RTMP behavior if you so choose. Otherwise, the `docker-compose.yml` will do most of the work.


Getting Started
---------------
To use this stack, simply clone the repo to a linux system and run the `start.sh` file.
NOTE: You'll probably have to run the following command to make the file executable: `chmod u+x start.sh`

That's it! From there, `docker-compose` will take care of the rest in standing up the infrastructure and the included web player will be downloaded for you.

Once the script has finished, visit the server's address in a browser: `http://<server-ip-address>`
You should be prompted with our slash page.

After 45ish seconds - the livestream will begin (sometimes you need to refresh the page to get it started) - that's about how long FFMPEG will take to get a good chunk of data encoded for playback.


Hardware Recommendations
------------------------
Depending on the number of viewers, beefy box is better. The FFMPEG encoder will take the RTMP stream and convert it once for vieweing (which you can tune how FFMPEG processes this data in the `docker-compose.yml` file.) Once the file/stream is being converted, the next bottleneck is bandwidth and disk IO. Feel free to change how the volumes are mounted to remove some of these hurtles. (like mounting the stuff into memory...)