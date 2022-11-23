FROM node:latest

ENV PROD_DATABASE _PROD_DATABASE

RUN mkdir -p /app

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "watch"]