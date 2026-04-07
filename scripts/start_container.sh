#!/bin/bash
set -e

#Stop old container 
/usr/bin/docker stop flask-app || true 
/usr/bin/docker rm flask-app || true 

# Pull the Docker image from Docker Hub
/usr/bin/docker pull hansrajpunia/sample-python-flask-service:latest

# Run the Docker image as a container
/usr/bin/docker run -d -p 80:5000 --name flask-app hansrajpunia/sample-python-flask-service:latest
