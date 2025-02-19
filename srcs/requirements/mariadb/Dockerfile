FROM debian:bullseye

RUN apt update -y && apt upgrade -y
RUN apt-get install -y mariadb-server netcat
COPY ./mdb-conf.sh /mdb-conf.sh
RUN chmod +x /mdb-conf.sh
ENTRYPOINT ["./mdv-conf.sh"]