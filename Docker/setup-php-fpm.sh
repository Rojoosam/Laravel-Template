#!/bin/bash

# Update the PHP-FPM configuration to listen on all IP addresses
sed -i 's/^listen = 127.0.0.1:9000/listen = 0.0.0.0:9000/' /usr/local/etc/php-fpm.d/www.conf

# Start PHP-FPM process (this assumes the container will be running php-fpm after setup)
exec php-fpm