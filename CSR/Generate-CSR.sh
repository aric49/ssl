#!/bin/bash
set -ex
#Use this script to Generate a Certificate Signing Request to be signed by your local CA

if [ -e $1 ]; then
    echo "ERROR - You need to provide a name for your certificate request!"
    exit 1
fi


CERT_NAME=$1

#First, we generate a Private Key for the CSR:
openssl genrsa -out $CERT_NAME.key 4096

#Then we generate a CSR, prompting the user for details:
openssl req -new -key $CERT_NAME.key -out $CERT_NAME.csr