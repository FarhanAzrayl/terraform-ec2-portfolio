#!/bin/bash

apt update -y
apt install nginx -y

systemctl start nginx
systemctl enable nginx

cat <<EOF > /var/www/html/index.html
$(cat /tmp/index.html)
EOF