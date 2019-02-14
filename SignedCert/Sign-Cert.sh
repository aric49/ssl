#!/bin/bash
set -ex

if [ -e $1 ]; then
    echo "ERROR - You need to provide the CA name"
    exit 1;
fi

if [ -e $2 ]; then
    echo "ERROR - You need to provide the name of the CSR"
    exit 1
fi

CA_NAME=$1
CSR_NAME=$2


#Use this script to generate a cert from your CSR, signed by your CA!
openssl x509 -req -in ../CSR/$CSR_NAME.csr -CA ../CA/$CA_NAME.pem -CAkey ../CA/$CA_NAME.key -CAcreateserial -out $CSR_NAME.pem -days 1024 -sha256