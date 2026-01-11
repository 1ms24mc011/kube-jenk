FROM node

WORKDIR /kube-jenk

COPY . .

EXPOSE 3001

CMD ['npm','start']