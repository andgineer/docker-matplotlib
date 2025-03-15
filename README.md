[![Docker Pulls](https://img.shields.io/docker/pulls/andgineer/matplotlib.svg)](https://hub.docker.com/r/andgineer/matplotlib/)[![Docker Automated build](https://img.shields.io/docker/image-size/andgineer/matplotlib)](https://hub.docker.com/r/andgineer/matplotlib)

# Lightweight Docker Container with Python packages Matplotlib and Numpy

Alpine Linux based [Docker container](https://cloud.docker.com/repository/docker/andgineer/matplotlib), 
with pre-installed with Python packages Matplotlib, Numpy.

Additionally, it includes the 'Comic Sans' font to support xkcd styles in Matplotlib.

## Using this image as a base

To use this container as a foundation for your Docker applications 
that require Matplotlib, add the following line to your Dockerfile:

    FROM andgineer/matplotlib

More information on how to use this image as a base can be found in the 
[Lean Python](https://github.com/andgineer/docker-lean-python?tab=readme-ov-file#using-this-image-as-a-base)

## Example

For a practical Dockerfile that employs this container for an IoT calendar application, 
refer to the [Calendar for IoT](https://github.com/andgineer/docker-iot-calendar) GitHub repository.

### Tags

* `latest` - latest Matplotlib with the default Python version
* `X.Y.Z` - Matplotlib X.Y.Z (like 3.10.0) with the default Python version
* `X.Y.Z-A.B` - Matplotlib X.Y.Z with Python A.B (like 3.10.0-3.12) 
