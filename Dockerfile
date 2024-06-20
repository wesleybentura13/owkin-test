# Use Ubuntu 24.04 as the base image
FROM ubuntu:24.04

# Set the maintainer label
LABEL maintainer="your-email@example.com"

# Update the package list and install any necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    # Clean up APT when done to reduce the image size
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the contents of the current directory to /app in the container
COPY . /app

# Specify the command to run when the container starts
CMD ["bash"]
