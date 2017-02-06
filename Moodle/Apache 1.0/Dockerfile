FROM ubuntu
MAINTAINER Albert Denuc

#Variables del dockerfile
ENV A2CONF moodle.conf
ENV DROOT /var/www/moodle/

#Puertos abiertos
EXPOSE 80 443 3306

#Instalaciones
RUN apt update && apt install apache2 apache2-doc php7.0 -y
ADD $A2CONF /etc/apache2/sites-available/


#Configuracion del Apache2
RUN mkdir $DROOT
RUN chown www-data:www-data -R $DROOT
RUN a2dissite 000-default.conf
RUN a2ensite $A2CONF
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
