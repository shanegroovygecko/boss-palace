FROM php:7.4-apache

RUN mkdir -p /var/www/installables
COPY docker-files/000-default.conf /etc/apache2/sites-enabled/000-default.conf
COPY docker-files/rewrite.load /etc/apache2/mods-enabled/rewrite.load
COPY docker-files/installables.sh /var/www/installables/installables.sh
COPY docker-files/provision-app-start.sh /var/www/installables/provision-app-start.sh
RUN chmod +x /var/www/installables/installables.sh
RUN sh /var/www/installables/installables.sh
RUN chmod +x /var/www/installables/provision-app-start.sh


#ENTRYPOINT ["/var/www/installables/provision-app-start.sh"]
ENTRYPOINT ["./docker/provision-app-start.sh"]


#&& -c 'curl -sL https://deb.nodesource.com/setup_15.x | bash -' \
#    && apt-get update \
#    && su -c 'apt install -y nodejs' \
