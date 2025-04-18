FROM node:20 

WORKDIR /app

COPY package.json ./*

RUN npm install -g nodemon

COPY . .

EXPOSE 5001

CMD ["nodemon", "--legacy-watch","index.js"]