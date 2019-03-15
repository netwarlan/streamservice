NETWAR RTMP/ENCODING STACK
==========================
The following repo houses the code used to make the RTMP/Encoding systems work at NETWAR.
The `BUILD` directory is so that you can modify the RTMP behavior if you so choose. Otherwise, the `docker-compose.yml` will do most of the work.

Getting Started
---------------
To use this stack, simply clone the repo to a linux system and run the `start.sh` file.
NOTE: You'll probably have to run the following command to make the file executable: `chmod u+x start.sh`

That's it! From there, `docker-compose` will take care of the rest in standing up the infrastructure and the included web player will be downloaded for you.

Once the script has finished, visit the server's address in a browser: `http://<server-ip-address>`
You should be prompted with our slash page. Web player is ready to go!

Setup the RTMP Stream
---------------------
To stream to this new stack, we'll need to setup our RTMP streamer. 
Using OBS [https://obsproject.com/], we can go into the Settings via `File -> Settings`, then selecting `Stream` from the left menu.
Under `Stream Type` select `Custom Streaming Server`.

For the URL, use the following format `rtmp://<server-ip-address>/live`
No Stream key is needed for ours.

Close the settings menu and setup your Studio how you want.
When ready, click the `Start Streaming` button in the lower right corner. A `green` indicator will appear showing we have a connection to our RTMP server.

After 45ish seconds - the livestream will begin (sometimes you need to refresh the page to get it started) - that's about how long FFMPEG will take to get a good chunk of data encoded for playback.

Hardware Recommendations
------------------------
Depending on the number of viewers, beefy box is better. The FFMPEG encoder will take the RTMP stream and convert it once for vieweing (which you can tune how FFMPEG processes this data in the `docker-compose.yml` file.) Once the file/stream is being converted, the next bottleneck is bandwidth and disk IO. Feel free to change how the volumes are mounted to remove some of these hurtles. (like mounting the stuff into memory...)