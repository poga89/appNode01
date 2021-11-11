FROM node:14

WORKDIR /APPNODE01

COPY package*.json ./

RUN npm install
RUN apt-get update
RUN apt-get install -y nano
RUN apt-get install -y vim

COPY . .

EXPOSE 4000

CMD [ "npm", "run", "dev" ]
