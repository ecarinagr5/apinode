ARG NODE_VERSION=16-alpine
FROM https://hub.docker.com/layers/node/library/node/16.3.0-alpine/images/sha256-f5079a4f93c8e4fd07ffa93fc95f6484d7f4f40abd126c11810cb282483ab599?context=explore
RUN apk --no-cache add curl
WORKDIR /src/index.js
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8081
CMD ["npm","start"]