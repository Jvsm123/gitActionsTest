FROM node:16-alpine AS deps

WORKDIR /app

COPY ./teste/package.json ./

COPY ./teste/yarn.lock ./

RUN --mount=type=cache,target=/root/.yarn YARN_CACHE_FOLDER=/root/.yarn yarn install

CMD [ "node_modules/.bin/next", "start" ]

COPY ./teste .

RUN npx nx run-many -t build -y
