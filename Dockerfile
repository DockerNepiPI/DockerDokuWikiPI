# Installation guide from https://www.dokuwiki.org/install:debian
FROM resin/rpi-raspbian:jessie
MAINTAINER Andreas Sekulski <andreas.sekulski@gmail.com>

USER root

RUN apt-get update \
    && apt-get install lighttpd \
    && apt-get install php5-cgi php5 dokuwiki \
    && /​etc/​init.d/​lighttpd force-reload
	
ADD nginx.conf /etc/nginx/nginx.conf	

EXPOSE 80
VOLUME ["/etc/dokuwiki/","/var/lib/dokuwiki/"]