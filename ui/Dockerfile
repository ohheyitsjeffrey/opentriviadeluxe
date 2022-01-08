# current node.js lts for the next 18 minutes
FROM node:16.13.1

WORKDIR /ui

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME 


ENV PATH /app/node_modules/.bin:$PATH

USER $USERNAME
EXPOSE 3001