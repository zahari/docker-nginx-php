FROM alpine

MAINTAINER Zahari Z. <zahari.zahariev@gmail.com>

RUN apk --update add nginx php-fpm \
    && mkdir -p /var/log/nginx \
    && touch /var/log/nginx/access.log \
    && mkdir -p /tmp/nginx \
    && echo "clear_env = no" >> /etc/php/php-fpm.conf

VOLUME /www
# ADD www /www
ADD nginx.conf /etc/nginx/

EXPOSE 80

CMD php-fpm -d variables_order="EGPCS" && (tail -F /var/log/nginx/access.log &) && exec nginx -g "daemon off;"
