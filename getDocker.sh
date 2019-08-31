#!/bin/bash
curl -fSSL https://get.docker.com -o /tmp/dockerSetup.sh
# Grabs dockers official install script and stores in the /tmp folder
sh /tmp/dockerSetup.sh
# Runs the docker install script
sudo usermod -aG docker $USER
#  Adds the user who ran the script to the docker group
rm /tmp/dockerSetup.sh
# Cleans up the docker scrips
sudo sed -i '14s/$/ -H tcp:\/\/0.0.0.0:4243/' /lib/systemd/system/docker.service
# Exposes the docker API on port 4243
sudo systemctl daemon-reload
# Restarts the system daemons
sudo service docker restart
# Restarts docker

