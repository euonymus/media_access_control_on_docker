# https://hub.docker.com/_/php/
FROM php:5.6-apache

RUN a2enmod ssl
COPY ./apache/site.conf /etc/apache2/sites-available/site.conf
COPY ./apache/site_ssl.conf /etc/apache2/sites-available/site_ssl.conf
COPY ./apache/ssl/ /etc/ssl/
RUN a2ensite site && a2ensite site_ssl

#RUN docker-php-ext-install mysql pdo pdo_mysql \
#    && apachectl restart

COPY ./src/ /var/www/html/
