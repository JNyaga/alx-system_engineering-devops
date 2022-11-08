#!/usr/bin/bash
#Steps to establish replication process between servers
replica_server_ip=3.94.181.238
source_server_ip=3.236.11.253
sudo ufw allow from $replica_server_ip to any port 3306
# on /etc/mysql/mysql.conf.d/
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
bind-address = $source_server_ip
#uncomment server-id = 1
#uncomment log_bin = /var/log/mysql/mysql-bin.log



# mysql-bin.000001 |      154