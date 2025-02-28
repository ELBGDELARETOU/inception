FROM debian:bullseye
RUN apt-get update -y
RUN  apt-get upgrade -y
RUN apt-get install -y nginx openssl
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout \
    /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=anaouali.42.fr/UID=anaouali"
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /var/www/wordpress
RUN chown -R www-data:www-data /var/www/wordpress
CMD ["nginx", "-g", "daemon off;"]