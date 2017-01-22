# ---------------------------------------------
# Docker file for sandbox.
#
# Author:  Collin Haines
# Updated: Nov 20, 2016
# ---------------------------------------------

# Base Image: Node's Alpine
FROM    node:alpine

# Install HTTP Server.
RUN     npm install -g http-server

# Create Directories
RUN     mkdir -p /usr/src/sandbox/login-form
RUN     mkdir -p /usr/src/sandbox/terminal
COPY    . /usr/src/sandbox/

# Install Terminal
WORKDIR /usr/src/sandbox/terminal
RUN     npm install --only=production
RUN     npm run prod

# Move to root.
WORKDIR /usr/src/sandbox

# Default `http-server -p` argument.
EXPOSE  8080

# Execute HTTP Server
CMD     ["http-server", "-d", "false"]
