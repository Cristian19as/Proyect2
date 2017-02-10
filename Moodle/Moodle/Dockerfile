FROM apc
MAINTAINER Albert Denuc
#Puertos apache hhtps y mysql
EXPOSE 80 443 3306

#Creamos una variable del fichero -zip del moodle
ENV AZIP moodle-latest-32.zip

#Añadimos el zip a la carpeta del moodle
ADD $AZIP /var/www/moodle/

#unzip al archivo
RUN apt install php7.0 libapache2-mod-php7.0 php7.0-pspell php7.0-curl php7.0-gd php7.0-intl php7.0-mysql php7.0-xmlrpc php7.0-ldap php7.0-xml php7.0-zip -y
RUN apt install unzip -y
RUN unzip /var/www/moodle/$AZIP -d /var/www/moodle
RUN chown www-data:www-data -R /var/www/moodle/*
VOLUME /var/www/moodle/
