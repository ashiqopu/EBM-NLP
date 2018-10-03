#!/bin/sh

################## WARNING: ##################
##                                          ##
##   This will remove all existing docker   ##
##   Containers and images from sysytem     ##
##                                          ##
##############################################

sudo docker stop $(sudo docker ps -aq)
sudo docker rm $(sudo docker ps -aq)
sudo docker rmi $(sudo docker images -q)

