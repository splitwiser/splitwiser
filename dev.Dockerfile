FROM node:20-alpine

WORKDIR /app/splitwiser_client

RUN apk add --no-cache git

COPY ./splitwiser_client/package.json ./splitwiser_client/package-lock.json ./

RUN npm install

WORKDIR /app/splitwiser_server

COPY ./splitwiser_server/package.json ./splitwiser_server/package-lock.json ./

RUN npm install

WORKDIR /app

COPY ./splitwiser_client ./splitwiser_client

COPY ./splitwiser_server ./splitwiser_server

COPY start.sh .

ENTRYPOINT [ "/bin/sh", "start.sh" ]