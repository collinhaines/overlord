# ---------------------------------------------
# Docker file for alliance.
#
# TODO:
# - Find a smaller Linux 86-64 system.
#
# Author:  Collin Haines
# Updated: Dec 11, 2016
# ---------------------------------------------

# Base Image: Latest Ubuntu
FROM    ubuntu

# Adjust Packages
RUN     apt-get update
RUN     apt-get install -y nodejs-legacy nodejs npm

# Create Directory
RUN     mkdir -p /usr/src/alliance
WORKDIR /usr/src/alliance

# Execute Meteor
CMD     node main.js
