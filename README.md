# gjchen/syncthing@Dockerhub
Alpine Linux with syncthing configured.
* Base docker image: https://hub.docker.com/r/gjchen/alpine/

Usage:
```
docker run -d -p 8384:8384 -p 22000:22000 -p 21027:21027/udp gjchen/syncthing
```

Then use your broswer to visit http://localhost:8384 to change settings.
