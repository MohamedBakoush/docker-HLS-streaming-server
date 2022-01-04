<h1>
  🐋 <big><strong>HLS Streaming Server with NGINX</strong></big>
</h1>

Guide used as a reference: https://docs.peer5.com/guides/setting-up-hls-live-streaming-server-using-nginx/


## Installing Locally Using Docker 

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

CLI into docker container and run 

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

<hr/>

<p id="user-content-license" align="center">
  <a href="https://github.com/MohamedBakoush/docker-HLS-streaming-server/blob/master/LICENSE"><img src="https://img.shields.io/badge/license-MIT-green?style=for-the-badge" />
</p>
