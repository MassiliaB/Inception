#! /bin/bash

# Generate the wp-config.php file

rm -f wp-config.php
echo "⚙️ Configuring Wordpress database..."
wp --allow-root core config --dbhost=${WORDPRESS_DB_HOST} --dbname=${WORDPRESS_DB_NAME} --dbuser=${WORDPRESS_DB_USER} --dbpass=${WORDPRESS_DB_PASSWORD} --skip-check
sleep 2
echo "⚙️ Configuring Wordpress parameters..."
wp --allow-root core install --url=${WORDPRESS_URL} --title="My wordpress hi !" --admin_user=admin --admin_password=admin --admin_email=email@email.com

php-fpm7.3 -F