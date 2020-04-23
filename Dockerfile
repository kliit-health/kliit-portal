FROM node:alpine

## install
COPY package*.json ./
RUN npm install

## compile
COPY . .
RUN npm run build

## execute
CMD [ "npm", "start" ]