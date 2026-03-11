#!/usr/bin/env bash
# Complete Nginx configuration with all requirements

apt-get update
apt-get install -y nginx

# Create index page
echo "Holberton School" > /var/www/html/index.html

# Create custom 404 page
echo "Ceci n'est pas une page" > /var/www/html/404.html

# Configure Nginx with redirect and 404
cat > /etc/nginx/sites-available/default << 'NGINX_CONFIG'
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html index.htm;

    server_name _;

    location / {
        try_files $uri $uri/ =404;
    }

    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }

    error_page 404 /404.html;
    location = /404.html {
        internal;
    }
}
NGINX_CONFIG

service nginx restart
