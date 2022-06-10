#! /bin/bash

echo $DB_MYSQL_PASSWORD

sed -i "s/127.0.0.1/db/g" /var/www/html/config/config_global_default.php
sed -i "34{s/=.*/= '$DB_MYSQL_PASSWORD';/}"  /var/www/html/config/config_global_default.php

/entrypoint.sh apache2-foreground
