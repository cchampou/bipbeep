FROM node:14

EXPOSE 5000

RUN mkdir -p /usr/src/backend

WORKDIR /usr/src/backend

COPY package.json /usr/src/backend
COPY yarn.lock /usr/src/backend

RUN yarn --network-timeout 3600000

COPY . /usr/src/backend

RUN yarn build

CMD yarn start