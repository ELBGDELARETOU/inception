FROM debian:bullseye
RUN apt-get update -y 
RUN apt-get upgrade -y
RUN apt-get install -y apt-utils
RUN apt-get install -y mariadb-server netcat
COPY ./mdb-conf.sh /mdb-conf.sh
RUN chmod +x /mdb-conf.sh
ENTRYPOINT ["./mdb-conf.sh"]