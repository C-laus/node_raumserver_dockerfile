FROM node:latest

# Create app directory
WORKDIR /usr/src/app

RUN npm install node-raumserver

EXPOSE 8080

CMD [ "npm", "start" ]
