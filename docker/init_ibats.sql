CREATE SCHEMA ibats;
use ibats;
CREATE USER 'mg'@'%' IDENTIFIED BY 'Abcd1234';
GRANT ALL ON *.* TO 'mg'@'%';
