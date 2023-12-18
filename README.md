# Flash-web-application-with-Docker
This repository contains files to run the flash web application using Docker.
In this project, we will take a simple flask web application, and package all its dependencies into a docker image and run the web server inside container and view the website.

Inorder to reproduce the project, you will need docker installed on your system.

Clone the repository in your system and cd into repo directory. From there, run following commands to build the docker image from Dockerfile and run the flask web server.

## Docker commands to reproduce the project
```
$ cd Flash-web-application-with-Docker

# build docker image from Dockerfile in . directory
$ docker build -t flask-webapp:v1 .

# run docker container with port maping
$ docker run -p 9696:9696 flash-webapp:v1
```
