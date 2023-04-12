FROM node:16-alpine AS deps

WORKDIR /app

COPY package.json ./

RUN yarn install

COPY . .

RUN yarn build

CMD [ "node_modules/.bin/next", "start" ]
