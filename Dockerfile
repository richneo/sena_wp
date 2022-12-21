FROM wordpress:latest

# Set environment variables used by the Wordpress image
# DB_USER and DB_PASSWORD are included as an example. However,
# these should be removed and set during docker run.
ENV WORDPRESS_DB_HOST=127.0.0.1 \
    WORDPRESS_DB_USER=root \
    WORDPRESS_DB_PASSWORD=root \
    WORDPRESS_DB_NAME=sena_wp \
    WORDPRESS_TABLE_PREFIX=wp_

#USER www-data

COPY wp-content/plugins/ /var/www/html/wp-content/plugins
COPY wp-content/themes/ /var/www/html/wp-content/themes
COPY wp-content/ /var/www/html/wp-content/uploads

RUN chown www-data:www-data -R /var/www/html/wp-content/ 
