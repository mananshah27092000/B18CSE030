FROM ubuntu

# updating the packages
RUN apt-get update

# installing curl
RUN apt-get -y install curl

# getting the script for nodejs
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash

# installing nodejs
RUN apt-get -y install nodejs

# creating app directory
RUN mkdir -p /app

# copying the dummy server
COPY server.js /app

# exposing the server
EXPOSE 8080

# changing the directory
WORKDIR /app

# running node server when container is created
CMD [ "node", "server.js" ]
