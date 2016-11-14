FROM node:4.4.7

RUN curl -L https://raw.githubusercontent.com/dockito/vault/master/ONVAULT > /usr/local/bin/ONVAULT && \
    chmod +x /usr/local/bin/ONVAULT

RUN curl -L https://github.com/maxcnunes/waitforit/releases/download/v1.4.0/waitforit-linux_amd64 > /usr/local/bin/waitforit && \
    chmod +x /usr/local/bin/waitforit

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10 && \
  echo 'deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.0 main' > /etc/apt/sources.list.d/mongodb-org-3.0.list && \
  apt-get update && \
  apt-get install mongodb-org-shell mongodb-org-tools

WORKDIR /app
