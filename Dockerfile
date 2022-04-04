FROM node:17-alpine

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    wget \
    unzip \
    network-manager-openvpn

WORKDIR /usr/src/app

RUN wget https://www.ipvanish.com/software/configs/configs.zip && \
    unzip configs.zip
COPY openvpn.sh openvpn.sh
CMD sh openvpn.sh

COPY package*.json ./
RUN npm ci
COPY bot.js .
USER node
ENTRYPOINT ["node", "bot.js"]