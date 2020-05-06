FROM node:latest

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app
COPY yarn.lock /usr/src/app

RUN yarn --network-timeout 3600000

COPY . /usr/src/app

RUN ls
RUN yarn build