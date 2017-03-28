FROM node:7.7-alpine

MAINTAINER Roman Myronov <"roman.myronov@syndicode.co">

ENV HOME /usr/src/app/
USER root
RUN mkdir -p $HOME
RUN apk update && apk add git
RUN npm i -g yarn nwb
WORKDIR $HOME
COPY package.json yarn.lock $HOME
RUN yarn install
COPY . $HOME
