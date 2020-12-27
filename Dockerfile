FROM nginx
RUN mkdir -p /etc/nginx/www && rm -f /etc/nginx/conf.d/*
COPY nginx.conf /etc/nginx/nginx.conf
COPY hi.html /etc/nginx/www/hi.html
EXPOSE 80 443 8080