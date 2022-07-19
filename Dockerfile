FROM ubuntu

RUN apt-get update

RUN apt-get install apache2

ADD ./index.html /var/www/html

ADD ./images/ /var/www/html/images/

EXPOSE 80

ENTRYPOINT apachectl -D FOREGROUND
