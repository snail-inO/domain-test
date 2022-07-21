FROM node:10-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

WORKDIR /usr/src/app

COPY . /usr/src/app/

EXPOSE 8080

CMD ["npm", "start"]