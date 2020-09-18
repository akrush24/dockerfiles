#!/bin/bash

while true
do
  /usr/bin/inotifywait --exclude .swp -r -e create -e modify -e delete -e move -e close /etc/nginx/conf.d
  /usr/sbin/nginx -t
  if [ $? -eq 0 ]
  then
    echo "Detected Nginx Configuration Change"
    echo "Executing: nginx -s reload"
    /usr/sbin/nginx -s reload
   fi
done
