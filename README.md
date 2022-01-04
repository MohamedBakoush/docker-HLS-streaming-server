<h1>
  🐋 <big><strong>HLS Streaming Server with NGINX</strong></big>
</h1>

Guide used as a reference: https://docs.peer5.com/guides/setting-up-hls-live-streaming-server-using-nginx/

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
