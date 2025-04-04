FROM php:7.4-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Install PHP extensions if needed
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy app files
COPY ./app/ /var/www/html/

# Custom PHP settings (optional)
COPY php.ini /usr/local/etc/php/

# Set correct permissions (optional)
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

