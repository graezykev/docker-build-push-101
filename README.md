# Build & Push a Docker Image 101

## 1. Install Docker / Docker Desktop

Download here: https://docs.docker.com/get-docker/

## 2. Sign Up to Docker Hub

Register here: https://hub.docker.com to get your `username` & `password`.

## 3. Create a Dockerfile

## 4. Build the Docker Image

```sh
docker build -t <image_name> .
```

Pick whatever `<image_name>` you like.

## 5. Tag the Docker Image

```sh
docker tag <image_name> <username>/<repository_name>:latest
```

Pick whatever `<repository_name>` you like.

## 6. Log In to Docker Hub

Log in and be prompted to input your `username` & `password`.

```sh
docker login
```

## 7. Push the Image to Docker Hub

```sh
docker push <username>/<repository_name>
```

## Preview the Image

Visit: `https://hub.docker.com/repository/docker/<username>/<repository_name>`
