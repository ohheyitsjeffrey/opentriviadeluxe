# current node.js lts for the next 18 minutes
FROM node:16.13.1

WORKDIR /ui

# Create the user
ARG USERNAME=appui
ARG USER_UID=1001
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME 


# setup 
COPY package*.json ./

RUN npm install

# don't run as root
USER $USERNAME

EXPOSE 3001

# start ui
CMD ["npm", "start"]
