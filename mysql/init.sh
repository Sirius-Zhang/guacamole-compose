#!/bin/bash

MYSQL_USER=root
MYSQL_PASSWORD=
MYSQL_HOST=localhost

mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -h $MYSQL_HOST << EOF
CREATE DATABASE guacamole;
CREATE USER 'guacamole'@'%' IDENTIFIED BY 'guacamole';
GRANT ALL PRIVILEGES ON guacamole.* TO 'guacamole'@'%';
FLUSH PRIVILEGES;
EOF

mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -h $MYSQL_HOST guacamole < /data/initdb.sql

echo "Database initialized."