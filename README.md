# SSL
Scripts for Learning and Training with SSL. Use this repo to generate local SSL infrastructure for learning how to generate CA's, CSR's, and Signed

## Overview
TBD

## PreReq
Bash, OpenSSL, Docker (only for testing)

## Creating a Local Certificate Authority
TBD

## Creating a CSR
TBD

## Signing your CSR from your Local CA
TBD


## Testing in Docker
Test using NGINX in Docker: 

```
docker run -it --rm -p 443:443 -p 80:80 -v ${PWD}/SignedCert/test-cert.pem:/etc/ssl/cert.pem -v ${PWD}/CSR/test-cert.key:/etc/ssl/key.key ssl-nginx
```