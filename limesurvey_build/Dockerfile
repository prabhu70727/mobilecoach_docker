FROM php:7.0-apache

COPY limesurvey /var/www/html/limesurvey
RUN chown -R www-data:www-data /var/www/html/limesurvey && chmod -R g+rw /var/www/html/limesurvey/tmp && chmod -R g+rw /var/www/html/limesurvey/upload
RUN docker-php-ext-install pdo_mysql

# COPY php.ini /usr/local/etc/php/