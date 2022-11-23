FROM node:latest

RUN mkdir -p /app

WORKDIR /app

COPY package.json /app

RUN npm install

RUN npm install mongoose

COPY . .

EXPOSE 3000

CMD ["npm", "run", "watch"]