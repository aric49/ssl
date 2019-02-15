#!/bin/bash
set -ex

#Use this script to Generate your own Certificate Authority using OpenSSL
if [ -e $1 ]; then
    echo "ERROR - You need to provide a name for the CA"
    exit 1;
fi

if [ "$EUID" -ne 0 ]; then 
  echo "This script requires root privileges. Please run using sudo."
  exit
fi

CA_NAME=$1


cp $CA_NAME.pem $CA_NAME.cer

cp $CA_NAME.cer /usr/local/share/ca-certificates/

update-ca-certificates

echo "CA has been successfully installed. You may have to import this cert in your web browser as well."