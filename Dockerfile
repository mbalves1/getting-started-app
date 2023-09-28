FROM node:lts-alpine3.15
WORKDIR /app
COPY package.json .
RUN apk add --no-cache python2 g++ make
RUN yarn config set strict-ssl false -g && yarn install --production
COPY . .
CMD ["node", "src/index.js"]
EXPOSE 3000