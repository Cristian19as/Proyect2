FROM ubuntu
MAINTAINER Cristian Arese

#Variables del dockerfile
ENV A2CONF prestashop.conf
ENV DROOT /var/www/prestashop/

#Puertos abiertos
EXPOSE 80 443 3306

#Instalaciones
RUN apt update && apt install apache2 apache2-doc php7.0 libapache2-mod-php7.0 php7.0-pspell php7.0-curl php7.0-gd php7.0-intl php7.0-mysql php7.0-xmlrpc php7.0-ldap php7.0-xml php7.0-zip -y
ADD $A2CONF /etc/apache2/sites-available/


#Configuracion del Apache2
RUN mkdir $DROOT
RUN chown www-data:www-data -R $DROOT
RUN a2dissite 000-default.conf
RUN a2ensite $A2CONF
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]