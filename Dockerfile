FROM drupal:8.7.6-apache

# install the PHP extensions we need
RUN apt-get update \
  && apt-get install -y git \
        && rm -rf /var/lib/apt/lists/* \
        && docker-php-ext-install bcmath
        
RUN apt-get update && \
    apt-get install -y --no-install-recommends git zip

RUN curl --silent --show-error https://getcomposer.org/installer | php
        
RUN composer require michelf/php-markdown
