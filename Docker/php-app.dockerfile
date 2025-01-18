FROM php:8.2-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev zip git

# Install PHP extensions
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd pdo pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy the script into the container
COPY ./Docker/setup-php-fpm.sh /usr/local/bin/setup-php-fpm.sh

# Give it execute permissions
RUN chmod +x /usr/local/bin/setup-php-fpm.sh

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the app files into the container
COPY ./app .

RUN ls /var/www/html

# Install application dependencies
RUN composer install

# Expose port 9000 and start PHP-FPM
EXPOSE 9000
CMD ["php-fpm"]