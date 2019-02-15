FROM nginx:stable-alpine
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/nginx-ssl.conf /etc/nginx/conf.d/nginx-ssl.conf
COPY nginx/index.html /var/www/nginx/index.html

EXPOSE 80 443

