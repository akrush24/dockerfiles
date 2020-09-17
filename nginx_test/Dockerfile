FROM nginx:latest
RUN apt-get update && apt-get install -y curl procps
ADD https://raw.githubusercontent.com/akrush24/dockerfiles/master/nginx_test/default.conf /etc/nginx/conf.d/
