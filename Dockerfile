FROM ubuntu:14.04
MAINTAINER "sejoo0 <3rd_memories@naver.com>"
LABEL "purpose"="webserver practice"
RUN apt-get update && apt-get install apache2 -y
ADD index.html /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD apachectl -D FOREGROUND
