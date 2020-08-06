FROM php:7.4-fpm-alpine

# Set working directory
WORKDIR /var/www/html

# Install dependencies
RUN apk add zip libzip-dev libpng-dev libjpeg freetype-dev libjpeg-turbo-dev

# Install extensions
RUN docker-php-ext-install pdo_mysql zip exif pcntl
RUN docker-php-ext-configure gd --with-freetype --with-jpeg 
RUN docker-php-ext-install gd

# Copy existing application directory contents
COPY ./web/ /var/www/html
