FROM node:17-alpine

RUN apk update
RUN apk upgrade
RUN apk add \
    wget \
    unzip \
    networkmanager-openvpn \
    sudo

WORKDIR /usr/src/app

RUN wget https://www.ipvanish.com/software/configs/configs.zip && \
    unzip configs.zip
COPY openvpn.sh openvpn.sh

COPY package*.json ./
RUN npm ci
COPY bot.js .
USER root
ENTRYPOINT ["sh", "start.sh"]