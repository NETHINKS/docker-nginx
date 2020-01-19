#!/bin/bash
##########################################################################
#                                                                        #
# nginx container                                                        #
# run.sh                                                                 #
#                                                                        #
# monitoring@nethinks.com                                                #
#                                                                        #
##########################################################################

# create nginx.conf
/opt/scripts/nginx/create_conf_nginx.py > /etc/nginx/nginx.conf

# start nginx
nginx -g "daemon off;"
