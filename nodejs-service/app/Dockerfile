# Use Node Carbon as the base image.
FROM node:carbon

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8181

# Run node 
CMD ["npm", "start"]
