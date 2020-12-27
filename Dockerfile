FROM nginx
RUN mkdir -p /etc/nginx/www \
    && rm -f /etc/nginx/conf.d/* \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log \
COPY nginx.conf /etc/nginx/nginx.conf
COPY hi.html /etc/nginx/www/hi.html
EXPOSE 80 443 8080