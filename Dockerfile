FROM httpd
MAINTAINER "Adel ESSAFI" <adelessafi@gmail.com>

RUN mkdir /usr/local/apache2/www
RUN mkdir /usr/local/apache2/www/s80
RUN mkdir /usr/local/apache2/www/s8080

COPY ./s80.html /usr/local/apache2/www/s80/index.html
COPY ./s8080.html /usr/local/apache2/www/s8080/index.html
COPY ./httpd.conf  /usr/local/apache2/conf
COPY ./httpd-vhosts.conf /usr/local/apache2/conf/extra/

EXPOSE 80
EXPOSE 8080


CMD ["httpd-foreground"]
