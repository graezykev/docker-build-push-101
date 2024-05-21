# Use the latest stable Ubuntu version
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl

# Install NVM (Node Version Manager) from master
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

# Set up environment variables for NVM
ENV NVM_DIR="/root/.nvm"
ENV SH="$NVM_DIR/nvm.sh"
ENV PROFILE="$NVM_DIR/bash_completion"

# Install Node.js using NVM
RUN . "$SH" && \
    nvm install node && \
    nvm use node

# Install PNPM globally
RUN npm install -g pnpm

# Set npm registry to https://npm.test.io
# RUN npm config set registry https://npm.test.io

# Your application-specific commands go here

# Set the working directory
WORKDIR /workspace

# Example: Run your application
CMD ["node", "--verson"]
CMD ["pnpm", "--verson"]
