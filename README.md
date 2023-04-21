[![Docker Pulls](https://img.shields.io/docker/pulls/andgineer/matplotlib.svg)](https://hub.docker.com/r/andgineer/matplotlib/)

This [Docker container](https://cloud.docker.com/repository/docker/andgineer/matplotlib) 
is available on Docker hub.

It is based on Alpine Linux and includes matplotlib, numpy, and Python. 
It also includes the 'Comic Sans' font for xkcd style in matplotlib.

## Usage

You can use this container as a base for your own Docker containers that require matplotlib. 
Simply add the following line to your Dockerfile:

    FROM andgineer/matplotlib

Then, copy your application files into the container and set the working directory, user, and 
command as necessary.

## Example

An example Dockerfile for an IoT calendar application using this container can be found in the 
GitHub repository [Calendar for IoT](https://github.com/andgineer/docker-iot-calendar).

