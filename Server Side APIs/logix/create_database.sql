CREATE  DATABASE logix;

USE logix;


CREATE TABLE user(

_user_id INT(11) PRIMARY KEY AUTO_INCREMENT,
_unique_id  VARCHAR(23) NOT NULL UNIQUE,
_name  VARCHAR(50) NOT NULL,
_email  VARCHAR(100) NOT NULL UNIQUE,
_encrypted_password  VARCHAR(80) NOT NULL,
_salt  VARCHAR(10) NOT NULL,
_created_at  DATETIME,
_updated_at  DATETIME

);


#create a user with limited access with a strong password
CREATE USER 'secured_user'@'localhost' IDENTIFIED BY 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDT7jNQR7VZhSb'

#grant limited  permission to user
 GRANT SELECT, INSERT, UPDATE ON logix.* TO 'secured_user'@'localhost';