FROM node:16-alpine AS builder

WORKDIR /app

COPY ./nextjs .

RUN npx nx run-many -t build -y
