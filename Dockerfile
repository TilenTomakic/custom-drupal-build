FROM drupal:8.5.2-apache

# install the PHP extensions we need
RUN apt-get update \
  && apt-get install -y git \
        && rm -rf /var/lib/apt/lists/* \
        && docker-php-ext-install bcmath
