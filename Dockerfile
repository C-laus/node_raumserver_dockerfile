# Use latest NodeJs Docker Container as Base
FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Download and install node-raumserver
RUN npm install node-raumkernel
RUN npm install node-raumserver

#COPY ./config.json ./node_modules/node-raumserver/config/default.json

# Expose HTTP 8080 to Reach the Server
EXPOSE 8080


# Start the Server
CMD [ "npm", "start" , "--prefix node_modules/node-raumserver"]
