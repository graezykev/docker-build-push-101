# Build & Push a Docker Image 101

## 1. Install Docker / Docker Desktop

Download here: https://docs.docker.com/get-docker/

## 2. Sign Up to Docker Hub

Register here: https://hub.docker.com to get your `username` & `password`.

## 3. Log In to Docker Hub

Log in and be prompted to input your `username` & `password`.

```sh
docker login
```

## 4. Create a Dockerfile

Or just copy [this one](./Dockerfile).

## 5. Build the Docker Image

`cd` to the directory where the `Dockerfile` exists.

```sh
docker build -t <image_name> .
```

Pick whatever `<image_name>` you like.

After building successfully, test the image by `docker run -it <image_name> /bin/bash`.

## 6. Tag the Docker Image

```sh
docker tag <image_name> <username>/<repository_name>:latest
```

Pick whatever `<repository_name>` you like.

## 7. Push the Image to Docker Hub

```sh
docker push <username>/<repository_name>:latest
```

## 8. Verify the Image

- Visit: `https://hub.docker.com/repository/docker/<username>/<repository_name>`

- Use it in `devcontainer.json`

  ```json
  {
    "name": "XXX",
    "image": "docker.io/<username>/<repository_name>:latest"
    "customizations": {}
  }
  ```
