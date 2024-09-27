#!/bin/bash

#setupcluster <number of clusters> <number of cp> <number of workers> <k8s version>
# Currently using kind v0.20.0, so the supported values for k8s version are: 1.21.14, 1.22.17, 1.23.17, 1.24.15, 1.25.11, 1.26.6, 1.27.3
# setupcluster 1 1 2 1.25.11
sudo mv /home/ubuntu/sr-lab /etc/nginx/sites-available
sudo ln -s /etc/nginx/sites-available/sr-lab /etc/nginx/sites-enabled/sr-lab
sudo nginx -s reload