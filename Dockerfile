FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /public

COPY package*.json .

RUN npm install

COPY public public/
COPY src/*.js src/

EXPOSE 8080

CMD ["npm", "start"]
