FROM node:latest

WORKDIR /app

# RUN apk update && apk upgrade
# RUN apk add git

COPY ./package*.json /app/

RUN yarn && yarn cache clean --force

COPY . .

ENV PATH ./node_modules/.bin/:$PATH