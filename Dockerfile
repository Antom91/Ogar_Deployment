FROM node:8

WORKDIR /home/node/app

COPY ./ogar/package.json /home/node/app

RUN npm install

COPY ./ogar/ /home/node/app

CMD node src/index.js

EXPOSE 8081
