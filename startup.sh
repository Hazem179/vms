#!/bin/bash

sed -i 's|root /home/site/wwwroot;|root /home/site/wwwroot/public;|' /etc/nginx/sites-enabled/default

nginx -t || exit 1

service nginx reload
