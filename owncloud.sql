CREATE USER 'ownclouduser'@'localhost' IDENTIFIED BY 'admin';
create database owncloud;
GRANT ALL ON owncloud.* TO 'ownclouduser'@'localhost';
flush privileges;
