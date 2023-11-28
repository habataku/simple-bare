FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /workspace

COPY package*.json .

RUN npm install

COPY public public/
COPY workspace/*.js workspace/

EXPOSE 8080

CMD ["npm", "start"]
