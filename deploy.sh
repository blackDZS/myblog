#!/bin/sh
USER=ubuntu
HOST=152.32.128.43
DIR=/var/www/myblog/   # the directory where your website files should go

hugo && rsync -avz --delete public/ ${USER}@${HOST}:${DIR} # this will delete everything on the server that's not in the local public directory 

exit 0