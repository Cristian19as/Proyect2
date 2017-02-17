#!/bin/bash

if ( id ${USER} ); then
  echo "User ${USER} already exists"
else
  echo "Creating user ${USER}"
  useradd -d /ftp/${USER} -m -p ${PASS} -u 1000 -s /bin/sh ${USER}
fi

if [ $1 == 'vsftpd' ]; then
  exec vsftpd
else
  exec $@
fi
