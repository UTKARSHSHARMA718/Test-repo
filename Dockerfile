FROM node:20-alpine as builder

WORKDIR /app
COPY package.json ./
RUN npm install --production
COPY . .
RUN npm run build
CMD ["npm", "run" , "start"]