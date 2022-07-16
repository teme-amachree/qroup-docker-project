FROM node:14

WORKDIR /app

COPY package,json

RUN np install

COPY . .

EXPOSE 80

VOLUME ["/app/feedback"]

CMD ["node","server.js"]




