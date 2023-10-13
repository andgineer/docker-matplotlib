[![Docker Pulls](https://img.shields.io/docker/pulls/andgineer/matplotlib.svg)](https://hub.docker.com/r/andgineer/matplotlib/)[![Docker Automated build](https://img.shields.io/docker/image-size/andgineer/matplotlib)](https://hub.docker.com/r/andgineer/matplotlib)

# Docker Container with Matplotlib, Numpy, and Python on Alpine Linux

This Docker container, available on [Docker Hub](https://cloud.docker.com/repository/docker/andgineer/matplotlib), 
is built on Alpine Linux and comes pre-installed with Matplotlib, Numpy, and Python. 

Additionally, it includes the 'Comic Sans' font to support xkcd styles in Matplotlib.

## Usage

To leverage this container as the foundational layer for your Docker applications requiring Matplotlib, 
incorporate the subsequent line in your Dockerfile:

    FROM andgineer/matplotlib

Subsequently, transfer your application's files into the container. 
Adjust the working directory, user, and command as deemed appropriate.

## Example

For a practical Dockerfile that employs this container for an IoT calendar application, 
refer to the [Calendar for IoT](https://github.com/andgineer/docker-iot-calendar) GitHub repository.

