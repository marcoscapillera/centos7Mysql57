yum localinstall https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
yum install mysql-community-server
grep 'A temporary password' /var/log/mysqld.log |tail -1
mysql -u root -ppassword
alter user 'root'@'localhost' identified by 'password';
service mysqld start
service mysqld status
