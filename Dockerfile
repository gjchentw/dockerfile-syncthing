FROM gjchen/alpine:3.6
MAINTAINER gjchen <gjchen.tw@gmail.com>

RUN 	apk --no-cache --no-progress upgrade -f && \
	apk --no-cache --no-progress add syncthing syncthing-utils 
ADD	s6.d /etc/s6.d

ENV	SYNCTHING_OWNER="1000:1000" \
	SYNCTHING_VOLUME="/opt" \
	STNODEFAULTFOLDER=1

VOLUME	["/opt"]

EXPOSE	8384 22000 21027/udp


