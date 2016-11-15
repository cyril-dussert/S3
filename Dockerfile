FROM node:4
MAINTAINER Giorgio Regni <gr@scality.com>

WORKDIR /usr/src/app

COPY . /usr/src/app
RUN npm install
RUN npm install mocha

CMD [ "npm", "start" ]

VOLUME ["/usr/src/app/localData","/usr/src/app/localMetadata"]

EXPOSE 8080

