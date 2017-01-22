#!/bin/sh
#
# Author:  Collin Haines
# Updated: Dec 14, 2016

# Unzip into the folder.
tar -zxf ~/pigeonhole.tar.gz --strip-components=1 -C ~/pigeonhole

# Install
cd ~/pigeonhole/programs/server
npm install

# Restart docker.
docker restart pigeonhole

# Remove file.
rm ~/pigeonhole.tar.gz
