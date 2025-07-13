FROM node:18

WORKDIR /app

RUN npm install -g nocodb

EXPOSE 10000

CMD ["nocodb", "serve", "-p", "10000"]
