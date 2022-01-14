# Open Trivia Deluxe

A trivia app in progress

## Prerequisites

### Docker

Install docker for your favorite operating system, or the one you are on now.  Either way.

#### Ubuntu

[Install Docker On Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04)

***IMPORTANT**be sure to do the optional **Step 2***, as scripts may assume you can run docker as your regular user and not root.

#### MacOS

TBD

### Docker Compose

Install docker compose to run the containers together locally.

#### Ubuntu

```
pip3 install docker-compose
```

#### MacOS

TBD

## Launching the Application

Be sure you have installed the pre-requisites listed above in the Prerequisites section.


1. From the project root, Pull base images and build the containers with docker-compose

```
docker-compose build
```

2. Still from the project root, launch the application with

```
docker-compose up
```

## API

[API Project ReadMe](./api/README.md)

## UI 

[UI Project ReadMe](./ui/README.md)

## Docs

[Documentation Project ReadMe](./docs/README.md)
