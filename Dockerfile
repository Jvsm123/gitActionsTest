FROM node:16-alpine AS builder

WORKDIR /app

COPY ./teste/package.json ./

# COPY ./teste/yarn.lock ./

# RUN yarn install

COPY ./teste .

RUN npx nx run-many -t build -y