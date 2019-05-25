FROM node:10-alpine
LABEL maintainer="mvaduva87@gmail.com"

ENV NODE_ENV=production

RUN mkdir -p /app
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install

COPY src ./src

CMD ["npm", "start"]