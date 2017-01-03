FROM nginx:latest

MAINTAINER <niltonb@users.noreply.github.com>

RUN apt-get update &&  apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN apt-get -y install nodejs

ADD . /opt/watson-conversation
WORKDIR /opt/watson-conversation
RUN npm install

ENTRYPOINT [ "npm", "start" ]



