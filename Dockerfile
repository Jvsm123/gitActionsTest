FROM node:16-alpine AS deps

WORKDIR /app

# COPY ./teste/package.json ./

RUN yarn install

COPY ./teste .

RUN npx nx run-many -t build -y
