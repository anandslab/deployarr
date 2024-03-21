create database guacamole;
CREATE USER 'guac_db_username' IDENTIFIED BY 'guac_db_password';	
GRANT ALL ON `guacamole%`.* TO 'guac_db_username';
flush privileges;
quit