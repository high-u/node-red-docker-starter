FROM node:8-slim
RUN apt-get update
RUN apt-get install -y git vim
RUN mkdir -p /node-red/data
WORKDIR /node-red
COPY package.json /node-red/package.json
RUN npm install
CMD ["/node-red/node_modules/node-red/red.js", "-u", "/node-red/data"]
