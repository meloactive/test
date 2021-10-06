FROM node:9

WORKDIR /app

RUN npm install -g peerflix-server

COPY package.json .
RUN npm install

COPY . .

USER node
EXPOSE 9000

CMD ["peerflix-server"]
