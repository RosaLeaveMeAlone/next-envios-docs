FROM nginx:1.23.3

EXPOSE 80

COPY . /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/conf.d
COPY nginx/.htpasswd /etc/nginx/.htpasswd

CMD [ "nginx","-g", "daemon off;" ]