service mariadb start
sleep 5
mariadb -e "create database if not exist\`${MYSQL_DB}\`;"
mariadb -e "create user if not exist \`${MYSQL_USER}\`@'%' identified by '${MYSQL_PASSWORD}';"
mariadb -e "grant all privileges on ${MYSQL_DB}. * to \`${MYSQL_USER}\`@'%';"
mariadb -e "flush privileges;"
mysqladmin -u root -p$MYSQL_ROOT_PASSWORD shutdown
mysqld_safe --port=3306 --bind-adress=0.0.0.0 --datadir='/var/lib/mysql'