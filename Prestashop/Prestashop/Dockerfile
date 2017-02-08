FROM cpa
MAINTAINER Cristian Arese

#Puertos apache hhtps y mysql
EXPOSE 80 443 3306

#Creamos una variable del fichero -zip del joomla
ENV AZIP prestashop_1.6.1.11_es.zip

#Añadimos el zip a la carpeta del joomla
ADD $AZIP /var/www/prestashop/

#unzip al archivo
RUN apt install php7.0 libapache2-mod-php7.0 php7.0-pspell php7.0-curl php7.0-gd php7.0-intl php7.0-mysql php7.0-xmlrpc php7.0-ldap php7.0-xml php7.0-zip -y
RUN apt install unzip -y
RUN unzip /var/www/prestashop/$AZIP -d /var/www/prestashop
RUN chown www-data:www-data -R /var/www/prestashop/*
VOLUME /var/www/prestashop/