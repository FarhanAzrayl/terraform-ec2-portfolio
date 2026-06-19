#!/bin/bash

set -eux

apt update -y
apt install -y nginx curl

systemctl enable nginx
systemctl start nginx

# remove ALL default nginx pages
rm -rf /var/www/html/*

# download your GitHub HTML
curl -L --fail -o /var/www/html/index.html \
https://raw.githubusercontent.com/FarhanAzrayl/terraform-ec2-portfolio/main/Website/index.html

# fix permissions
chown -R www-data:www-data /var/www/html

# restart nginx
systemctl restart nginx
