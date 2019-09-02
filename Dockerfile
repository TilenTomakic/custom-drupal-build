FROM drupal:8.7.6-apache

# install the PHP extensions we need
RUN apt-get update \
  && apt-get install -y git \
        && rm -rf /var/lib/apt/lists/* \
        && docker-php-ext-install bcmath
        
RUN apk --update add wget curl git php php-curl php-openssl php-json php-phar php-dom && rm /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 
        
