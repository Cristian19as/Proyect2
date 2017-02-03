FROM ubuntu
MAINTAINER Cristian Arese

#Variables del dockerfile
ENV A2CONF <"path del directorio de configuracion">


#Puertos abiertos
EXPOSE 80 443 3306

#Instalaciones
RUN apt update && apt upgrade && apt install apache2 apache2-doc php5 mysql-server phpmyadmin
ADD $A2CONF /etc/apache2/sites-available/


#Configuracion del Apache2
RUN a2dissite default.conf
RUN a2enssite $A2CONF
