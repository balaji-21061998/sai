#!/bin/bash

#install nginx
yum install nginx

#check status
sytemctl status nginx

#start nginx
systemctl start nginx

#stop nginx
systemctl stop nginx

