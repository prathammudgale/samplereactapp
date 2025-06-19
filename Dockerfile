FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD  ["npm", "start" , "serve" , "-s" , "build" , "-l" , "3000" ]
