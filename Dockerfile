# Installation guide from https://www.dokuwiki.org/install:debian
FROM debian:stretch
MAINTAINER Andreas Sekulski <andreas.sekulski@gmail.com>

ENV DOKUWIKI_VERSION 2017-02-19e

# Install all DokuWiki repositories
RUN apt-get update \
      && apt-get install wget php libapache2-mod-php -y \
      && wget http://download.dokuwiki.org/src/dokuwiki/dokuwiki-$DOKUWIKI_VERSION.tgz \
      && tar xzvf dokuwiki-$DOKUWIKI_VERSION.tgz \
      && mv dokuwiki-$DOKUWIKI_VERSION /var/www/html/dokuwiki \
      && chown -R www-data:www-data /var/www/html/ \
      && rm dokuwiki-$DOKUWIKI_VERSION.tgz

ADD apache2.conf /etc/apache2/apache2.conf

EXPOSE 80

VOLUME ["/var/www/html/dokuwiki/"]

ADD docker-entypoint.sh /docker-entypoint.sh
RUN chmod +x /docker-entypoint.sh
ENTRYPOINT ["/docker-entypoint.sh"]
