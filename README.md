# Your Python Application

This repository contains the source code for your Python application.

## Building the Docker Image

To build the Docker image, navigate to the directory containing the Dockerfile and run the following command:

```bash
docker build -t exam .

```wsl
docker run -v $(pwd)/images:/app/images -v $(pwd)/output:/app/output exam images