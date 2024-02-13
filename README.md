# Project Title : Dockerize Node-ToDo Application

## About Project : 
This is a node-to-do app that provides CRUD operations such as getting the task list, creating a task, deleting a task, and updating a task. The purpose of building this web application was to learn about creating Docker files, networks,  and volumes and using Docker Compose to run multiple containers at once that can talk to each other.

## Prerequisites 
You need to install docker and docker compose in your machine using this [refrence](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04) .


## Commands for Run the Project

### Create docker network :

`docker network create todo-network`

### Create docker volume :

`docker volume create todo-volume`

### Create container :

Now we have to create 2 container one is mongo and second is node-todo container 

- Using this command you can create Mongo container :
  
  `docker run -d   --name my-mongodb-container   --network todo-network   -v todo-volume:/data/db   -e MONGO_INITDB_ROOT_USERNAME=admin   -e MONGO_INITDB_ROOT_PASSWORD=test@123   --hostname mongohost   -p 27017:27017   mongo:latest`

- After creating mongo container open mongo compass and click on New Connection >> Go to Advance connection option and add your username and password and establish your connection.
  
- Build the image using `docker build -t nodetodo-img:latest .`
  
- Now create a container for node-todo app using `docker run -d -p 3000:3000 --network=todo-network --name node-todo-container nodetodo-img:latest`

- Browse the port 3000 and run your application

### Run The Project using Docker Compose :

- use the below commands :
  - `docker compose build`
  - `docker compose up -d`
  
