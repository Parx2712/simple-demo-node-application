#FROM is the base image for which we will run our application
FROM node:14

# Create app directory
WORKDIR /root/doc/app/simple-demo-node-application

# Install app dependencies
COPY package.json ./

RUN npm install

# Bundling app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
