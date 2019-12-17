FROM ubuntu

RUN  apt-get update -y && apt-get install apache2 -y

COPY webfile/newfile.html  /var/www/html

WORKDIR /var/www/html

EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND
  

