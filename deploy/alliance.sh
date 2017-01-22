#!/bin/sh
#
# Author:  Collin Haines
# Updated: Dec 4, 2016

# Unzip into the folder.
tar -zxf ~/alliance.tar.gz --strip-components=1 -C ~/alliance

# Install
cd ~/alliance/programs/server
npm install

# Restart docker.
docker restart alliance

# Remove file.
rm ~/alliance.tar.gz
