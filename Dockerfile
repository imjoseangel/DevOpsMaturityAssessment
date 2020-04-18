FROM php:7-apache

LABEL maintainer=imjoseangel

COPY start-apache /usr/local/bin
RUN a2enmod rewrite

# Copy application source
COPY . /var/www/html
RUN chown -R www-data:www-data /var/www/html

CMD ["start-apache"]
