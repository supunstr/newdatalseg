#!/bin/bash -v

sudo yum install -y git 

aws configure set default.region us-east-1
a=`aws rds describe-db-instances  --query 'DBInstances[*].["Endpoint"."Address"]' | grep rds`
newdb=`echo $a | sed 's/^.\(.*\).$/\1/'`

final=`echo "'$newdb',"`

git clone https://github.com/supunstr/newdatalseg.git

sudo cp -R newdatalseg/html /var/www/
olddb=`cat /var/www/html/drupal/sites/default/settings.php | grep rds.amazonaws.com | awk '{print $3}'`
sudo sed -i "s/$olddb/$final/g" /var/www/html/drupal/sites/default/settings.php

sudo cp newdatalseg/drupal.conf /etc/httpd/conf.d/drupal.conf
sudo chown -R apache:apache  /var/www/html/

sudo semanage fcontext -a -t httpd_sys_rw_content_t "/var/www/html/drupal(/.*)?"
sudo semanage fcontext -a -t httpd_sys_rw_content_t '/var/www/html/drupal/sites/default/settings.php'
sudo semanage fcontext -a -t httpd_sys_rw_content_t '/var/www/html/drupal/sites/default/files'
sudo restorecon -Rv /var/www/html/drupal
sudo restorecon -v /var/www/html/drupal/sites/default/settings.php
sudo restorecon -Rv /var/www/html/drupal/sites/default/files
sudo chown -R apache:apache  /var/www/html/drupal

sudo setsebool httpd_can_network_connect_db on

sudo systemctl restart httpd


mysql -u admin -h $newdb -pAdmin1234


CREATE DATABASE drupal CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER 'drupal'@'%' IDENTIFIED BY 'Admin1234';
GRANT ALL PRIVILEGES ON drupal.* TO 'drupal'@'%';
FLUSH PRIVILEGES;
QUIT

mysql -u admin -h $newdb -pAdmin1234 drupal < newdatalseg/backupfinal.sql
