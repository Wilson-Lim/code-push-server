FROM node:8.11.4-alpine

COPY package.json .
RUN npm install

EXPOSE 3000

CMD ["pm2-docker", "start", "/process.json"]
