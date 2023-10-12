CREATE DATABASE guacamole;
CREATE USER 'guacamole'@'%' IDENTIFIED BY 'guacamole';
GRANT ALL PRIVILEGES ON guacamole.* TO 'guacamole'@'%';
FLUSH PRIVILEGES;