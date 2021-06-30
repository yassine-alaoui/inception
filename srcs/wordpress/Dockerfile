FROM alpine:3.12
RUN apk update && apk upgrade
#install all php
RUN apk add php7 php7-fpm php7-opcache && apk add php7-json php7-mysqli && apk add php7-session \
	&& apk add php7-openssl && apk add php7-mbstring 
#add wordpress
RUN wget https://wordpress.org/latest.tar.gz && tar -zxvf latest.tar.gz
#copy the wp-config
COPY wp-config.php /wordpress/wp-config.php
COPY www.conf /etc/php7/php-fpm.d/www.conf
CMD php-fpm7 -F