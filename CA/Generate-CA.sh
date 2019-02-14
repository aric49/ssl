#!/bin/bash

#Use this script to Generate your own Certificate Authority using OpenSSL
if [ -e $1 ]; then
    echo "ERROR - You need to provide a name for the CA"
    exit 1;
fi

CA_NAME=$1



#First, we create the Private Key for the Certificate Authority:
openssl genrsa -out $CA_NAME.key 4096

#Generate a CA Certificate valid for 10 years:
openssl req -x509 -new -nodes -key $CA_NAME.key -sha256 -days 3650 -out $CA_NAME.pem


#TODO: Install CA locally!