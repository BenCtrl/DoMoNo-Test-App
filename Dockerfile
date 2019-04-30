FROM node:11   
# Safer to use actual version as opposed to "latest" version

WORKDIR /usr/src/app
#where our app will live in the container^^^

COPY package*.json ./
#copies 'package.json' to the WORKDIR
#'*' is a WILDCARD (so it includes package-lock.json as well)

RUN npm install
#automatically runs the command (so we can install our dependancies)

COPY . .
#Copies all files from current (local) directory into WORKDIR

EXPOSE 3000
#Port Number 3000

CMD ["npm", "start"]


