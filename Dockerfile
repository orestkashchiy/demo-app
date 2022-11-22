FROM node:latest

RUN mkdir -p /app

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . .

ENV PROD_DATABASE $PROD_DATABASE

EXPOSE 3000

CMD ["npm", "run", "watch"]