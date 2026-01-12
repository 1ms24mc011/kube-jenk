FROM node

WORKDIR /kube-jenk

COPY . .

EXPOSE 3000

CMD ['npm','start']
