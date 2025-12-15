FROM node

WORKDIR /node_project

COPY package*.json .

EXPOSE 3000

COPY . .

CMD ["npm","start"]