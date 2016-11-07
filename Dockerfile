FROM gjchen/alpine
MAINTAINER gjchen <gjchen.tw@gmail.com>

RUN 	apk --no-cache --no-progress upgrade -f 
RUN	apk --no-cache --no-progress add syncthing # syncthing-utils 


VOLUME	["/opt"]

EXPOSE	8384 22000 21027/udp

CMD	rsyslogd; crond -b; [ ! -f "$HOME/.config/syncthing/config.xml" ] && syncthing -generate="$HOME/.config/syncthing" && sed -ie 's/127\.0\.0\.1\:8384/0\.0\.0\.0\:8384/g' $HOME/.config/syncthing/config.xml; syncthing 

