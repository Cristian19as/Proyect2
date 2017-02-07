FROM apache-pol
MAINTAINER Pol Fernandez <polfernandezfrancas1998@gmail.com>

#Puertos apache hhtps y mysql
EXPOSE 80 443 3306

#Creamos una variable del fichero -zip del joomla
ENV JOOMLAZIP Joomla_3.6.5-Stable-Full_Package.zip

#Añadimos el zip a la carpeta del joomla
ADD $JOOMLAZIP /var/www/joomla/

#unzip al archivo
RUN apt install php7.0 libapache2-mod-php7.0 php7.0-pspell php7.0-curl php7.0-gd php7.0-intl php7.0-mysql php7.0-xmlrpc php7.0-ldap php7.0-xml php7.0-zip -y
RUN apt install unzip -y
RUN unzip /var/www/joomla/$JOOMLAZIP -d /var/www/joomla
RUN chown www-data:www-data -R /var/www/joomla/*
