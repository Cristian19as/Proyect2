FROM ubuntu
MAINTAINER Cristian Arese

VOLUME /ftp/

#Variables para la creación del usuario
ENV USER cristian
ENV PASS 12345

RUN apt update && apt install vsftpd supervisor -y && mkdir -p /var/run/vsftpd/empty && mkdir -p /var/log/supervisor/ #&& mkdir /ftp/

#Comparte los archivos de configuracion con el contenedor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD vsftpd.conf /etc/vsftpd.conf

#Puertos ftp modo directo
EXPOSE 20 21

#Puertos ftp del modo pasivo
EXPOSE 12020 12021 12022 12023 12024 12025
RUN useradd -d /ftp/cristian -m -p 12345 -u 1000 -s /bin/sh $USER
RUN chmod +x /usr/bin/supervisord

#Ejecucion del supervisor (Programa para "vigilar" processos en este caso vsftpd)
CMD ["/usr/bin/supervisord"]
#Cristian Arese
