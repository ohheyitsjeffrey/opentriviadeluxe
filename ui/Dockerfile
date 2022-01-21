# current node.js lts for the next 18 minutes
# if changing this version, please also update it in ./.nvmrc
FROM node:16.13.1

WORKDIR /ui

# setup 
COPY package*.json ./

# for some reason these permissions just do not get set correctly
RUN mkdir -p /home/node/ui/node_modules/.cache

RUN chown -R node:node /ui

EXPOSE 3001

# don't run as root!
USER node

RUN npm install

# start ui
CMD ["npm", "start"]
