# syntax=docker/dockerfile:1.4
FROM node:lts

WORKDIR /usr/src/app

# Copy package.json 
COPY package.json /package.json
COPY package-lock.json /package-lock.json

# Build the app
ENV CI=true

# Install app dependencies
RUN npm install

# Bundle app source
COPY . ./

# Expose port 3000
ENV PORT=3000

CMD [ "npm", "start" ]