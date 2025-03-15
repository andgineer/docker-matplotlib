[![Docker Pulls](https://img.shields.io/docker/pulls/andgineer/matplotlib.svg)](https://hub.docker.com/r/andgineer/matplotlib/)[![Docker Automated build](https://img.shields.io/docker/image-size/andgineer/matplotlib)](https://hub.docker.com/r/andgineer/matplotlib)

# Lightweight Docker Container with Python packages Matplotlib and Numpy

Alpine Linux based [Docker container](https://cloud.docker.com/repository/docker/andgineer/matplotlib), 
with pre-installed with Python packages Matplotlib, Numpy.

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

### Tags

* `latest` - latest Matplotlib with the default Python version
* `X.Y.Z` - Matplotlib X.Y.Z (like 3.10.0) with the default Python version
* `X.Y.Z-A.B` - Matplotlib X.Y.Z with Python A.B (like 3.10.0-3.12) 
