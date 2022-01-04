<h1>
  🐋 <big><strong>HLS Streaming Server with NGINX</strong></big>
</h1>

[**Installation**](#installation) |
[**Start NGINX**](#start-nginx) |
[**How to stream with OBS**](#how-to-stream-with-obs) |
[**Watch HLS Stream**](#watch-hls-stream) |
[**License**](#license)

Setting up HLS live streaming server using NGINX + nginx-rtmp-module on Docker

Guide used as a reference: https://docs.peer5.com/guides/setting-up-hls-live-streaming-server-using-nginx/


## Installation

### 1. Install Docker

[Install Docker](https://docs.docker.com/get-docker/) by following Docker’s instructions 

### 2. Clone Github Repository

Clone repo in your terminal with the following command:

```
git clone https://github.com/MohamedBakoush/docker-HLS-streaming-server.git
```

Once that command completes successfully, you should see a new docker-HLS-streaming-server folder in your current directory.

### 3. Launch Through Docker

Navigate to the folder you created in step 2:

```
cd docker-HLS-streaming-server
```

Then, run the following command:

```
docker-compose up   
```

You should see a wall of logging output from the containers being launched on your machine. Once this output slows, you should have a running instance of docker-HLS-streaming-server on your local machine! 

## Start NGINX

CLI into docker-HLS-streaming-server's docker container and run 

**Start nginx in the background**
```
/usr/local/nginx/sbin/nginx
```

**Start nginx in the foreground**
```
usr/local/nginx/sbin/nginx -g 'daemon off;'
```

**Kill nginx**
```
/usr/local/nginx/sbin/nginx -s stop
```

## How to stream with [OBS](https://obsproject.com/)
- Settings
    - Stream
        - Service: Custom
        - Server: `rtmp://localhost:1935/stream`
        - Stream Key: $STREAM_KEY (Can Be Anything)
- Start Streaming

## Watch HLS Stream

[Safari](https://www.apple.com/safari/), [WatchVideobyLink](https://github.com/MohamedBakoush/WatchVideoByLink), [VLC](https://www.videolan.org/vlc/), [HLS player](https://github.com/videojs/http-streaming):

```
http://localhost:5432/hls/$STREAM_KEY.m3u8
```

<hr/>

<p id="user-content-license" align="center">
  <a href="https://github.com/MohamedBakoush/docker-HLS-streaming-server/blob/master/LICENSE"><img src="https://img.shields.io/badge/license-MIT-green?style=for-the-badge" />
</p>
