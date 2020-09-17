#!/bin/bash

sh -c "/etc/nginx/nginxReloader.sh &"
exec "$@"
