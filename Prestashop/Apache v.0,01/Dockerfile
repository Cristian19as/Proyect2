FROM ubuntu
MAINTAINER Cristian Arese

#Variables del dockerfile
ENV A2CONF prestashop.conf
ENV DROOT /var/www/prestashop/
ENV DROOT2 /var/www/prestashopmail/
ENV DROOT3 /var/pass/
ENV PASS aa

#Puertos abiertos
EXPOSE 80 443 3306

#Instalaciones
RUN apt update && apt install apache2 apache2-doc php7.0 libapache2-mod-php7.0 php7.0-pspell php7.0-curl php7.0-gd php7.0-intl php7.0-mysql php7.0-xmlrpc php7.0-ldap php7.0-xml php7.0-zip -y
ADD $A2CONF /etc/apache2/sites-available/



#Configuracion del Apache2
RUN mkdir $DROOT && mkdir $DROOT2 && mkdir $DROOT3
ADD $PASS $DROOT3
RUN chown www-data:www-data -R $DROOT
RUN chown www-data:www-data -R $DROOT2
RUN a2dissite 000-default.conf
RUN a2ensite $A2CONF
VOLUME /var/www/prestashop/
VOLUME /var/www/prestashopmail/
VOLUME /var/pass/
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
#Cristian Arese
