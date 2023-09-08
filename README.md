# Mojo Docker

[![Maintained_By Mabel Data](https://img.shields.io/badge/Maintained_By-MabelData-purple)](https://github.com/mabeldata/mojo_docker/blob/main/LICENSE)

All the right's belong to [Modular](https://www.modular.com/)

## Objective

Unofficial Docker Image for Mojo 
This docker image is build for giving user's from windows and mac access to a more isolated environment.


Requirements
- Docker, Docker-Compose
- VSCode (Not obrigatory, but nice to have)
- VSCode docker official extension

1. To use this repository, just clone it to your local environment:

```
git clone https://github.com/mabeldata/mojo_docker.git
```

2. Now run the docker-compose file:

```
docker-compose up -d
```

3. After building and running the image, go to the Docker extension in VSCode and click over the image and select Attach Visual Studio Code.

4. In the new VSCode window, use the command Ctrl + J and then in the console write mojo, from there you are good to go!

