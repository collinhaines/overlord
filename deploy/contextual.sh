#!/bin/sh
#
# Author:  Collin Haines
# Updated: Nov 27, 2016

# Unzip into the folder.
tar -zxf ~/contextual.tar.gz --strip-components=1 -C ~/contextual

# Install
cd ~/contextual/programs/server
npm install

# Restart docker.
docker restart contextual

# Remove file.
rm ~/contextual.tar.gz
