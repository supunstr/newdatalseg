sudo yum install -y  git
git clone https://github.com/supunstr/newdatalseg.git

sudo cp -R newdatalseg/html /var/www/
olddb=`cat /var/www/html/drupal/sites/default/settings.php | grep rds.amazonaws.com | awk '{print $3}'`
newdb="'database-1.cietke0hg61z.us-east-1.rds.amazonaws.com',"
sudo sed -i "s/$olddb/$newdb/g" /var/www/html/drupal/sites/default/settings.php

sudo newdatalseg/drupal.conf /etc/httpd/conf.d/drupal.conf
sudo chown -R apache:apache  /var/www/html/

sudo systemctl restart httpd


mysql -u admin -h database-1.cietke0hg61z.us-east-1.rds.amazonaws.com -pAdmin1234

CREATE DATABASE drupal CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER 'drupal'@'%' IDENTIFIED BY 'Admin1234';
GRANT ALL PRIVILEGES ON drupal.* TO 'drupal'@'%';
FLUSH PRIVILEGES;
QUIT

mysql -u admin -h database-1.cietke0hg61z.us-east-1.rds.amazonaws.com -pAdmin1234 drupal < newdatalseg/backupfinal.sql
