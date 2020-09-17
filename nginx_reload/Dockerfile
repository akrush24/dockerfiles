FROM nginx:latest
RUN apt-get update && apt-get install -y curl procps inotify-tools
ADD default.conf /etc/nginx/conf.d/
ADD nginxReloader.sh /etc/nginx
ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
