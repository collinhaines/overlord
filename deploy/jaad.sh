#!/bin/sh
#
# Author:  Collin Haines
# Updated: Nov 19, 2016

# Unzip into the folder.
tar -zxf ~/jaad.tar.gz --strip-components=1 -C ~/jaad

# Install
cd ~/jaad/programs/server
npm install

# Restart docker.
docker restart jaad

# Remove file.
rm ~/jaad.tar.gz
