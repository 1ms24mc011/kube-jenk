FROM node:18
WORKDIR /kube-jenk

COPY package*.json ./
RUN npm install

COPY . .

CMD ["npm", "start"]
