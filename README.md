# Mojo Docker

[![Maintained_By Mabel Data](https://img.shields.io/badge/Maintained_By-MabelData-purple)](https://github.com/mabeldata/mojo_docker/blob/main/LICENSE)

All rights reserved to [Modular](https://www.modular.com/)

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

2. Go to [Modular](https://developer.modular.com/signup) and sign up.

3. Now copy the MODULAR_AUTH key and paste in the docker-compose.yml file in args: MODULAR_AUTH_KEY= and save it.

2. Now run the docker-compose file:

```
docker-compose up -d
```

3. After building and running the image, go to the Docker extension in VSCode and click over the image and select Attach Visual Studio Code.

4. In the new VSCode window, use the command Ctrl + J and then in the console write mojo, from there you are good to go!

## Flavors

It will be add with time new custom compose files as users will need different setups for their projects developments.

## Training
Freecodecamp released a free training covering the basics of Mojo, you can check it below:
[Mojo Programming Language – Full Course for Beginners](https://youtu.be/5Sm9IVMet9c?si=SIBrX7y0SAeEwbIe)

## Known Issues

1. Is known that even with docker for now, machines that use ARM instead of AMD e.g: Mac M1/M2, will not work.
