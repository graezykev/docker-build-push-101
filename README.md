# Build & Push a Docker Image 101

## Install Docker / Docker Desktop

Download here: https://docs.docker.com/get-docker/

## Sign Up to Docker Hub

Register here: https://hub.docker.com

To get your <username> & <password>.

## Create a Dockerfile

## Build the Docker Image

```sh
docker build -t <image_name> .
```

Pick whatever <image_name> you like.

## Tag the Docker Image

```sh
docker tag <image_name> <username>/<repository_name>:latest
```

Pick whatever <repository_name> you like.

## Log In to Docker Hub

Log in and be prompted to input your <username> & <password>.

```sh
docker login
```

## Push the Image to Docker Hub

```sh
docker push <username>/<repository_name>
```

## Preview the Image

Visit: https://hub.docker.com/repository/docker/<username>/<repository_name>
