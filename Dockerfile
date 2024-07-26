FROM php:8.0-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy application source code to the Docker image
COPY ./ /var/www/html/

# Install additional PHP extensions if needed
RUN docker-php-ext-install mysqli pdo pdo_mysql

EXPOSE 80
