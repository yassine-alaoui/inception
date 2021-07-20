mysql_install_db --user=mysql --datadir=/var/lib/mysql
chown -R mysql: /var/lib/mysql
mkdir -p /run/mysqld
nohup mysqld --user=root &
mysql -u root -e "CREATE DATABASE wp_db;"
mysql -u root wp_db < wp_db.sql
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'yassine'@'%' IDENTIFIED BY 'yassine';"
mysql -u root -e "FLUSH PRIVILEGES;";
pkill mysqld
sleep 2
mysqld --user=root