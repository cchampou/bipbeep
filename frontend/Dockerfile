FROM node:14

EXPOSE 5000

RUN mkdir -p /usr/src/frontend

WORKDIR /usr/src/frontend

COPY package.json /usr/src/frontend
COPY yarn.lock /usr/src/frontend

RUN yarn --network-timeout 3600000

COPY . /usr/src/frontend

RUN yarn build

CMD yarn start