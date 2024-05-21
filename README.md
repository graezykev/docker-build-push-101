# Build & Push a Docker Image 101

## 1. Sign Up to Docker Hub

Register here: https://hub.docker.com to get your `username` & `password`.

## 2. Install Docker / Docker Desktop

Download here: https://docs.docker.com/get-docker/

## 3. Create a Dockerfile

Or just copy [this one](./Dockerfile).

## 4. Build the Docker Image

```sh
docker build -t <image_name> .
```

Pick whatever `<image_name>` you like.

After building successfully, test the image by `docker run -it <image_name> /bin/bash`.

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
