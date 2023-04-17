FROM node:16-alpine AS builder

WORKDIR /app

COPY ./teste .

RUN npx nx run-many -t build -y
