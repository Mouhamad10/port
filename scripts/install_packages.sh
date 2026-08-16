#!/bin/bash

# Install Ubuntu/Debian system packages
UBUNTU_PACKAGES() {
  echo "Installing Ubuntu packages..."
  sudo apt-get update
  sudo apt-get install -y \
    git \
    curl \
    wget \
    build-essential \
    python3 \
    python3-pip \
    openjdk-11-jdk \
    openjdk-11-jdk-headless \
    android-sdk-platform-tools \
    brotli \
    imagemagick \
    p7zip-full \
    zip \
    unzip \
    xsltproc \
    libssl-dev \
    libffi-dev \
    lib32z1 \
    bc \
    schedtool \
    e2fsprogs \
    dos2unix \
    maven \
    ninja-build
  echo "Ubuntu packages installation completed!"
}

# Install Python packages
PYTHON_PACKAGES() {
  echo "Installing Python packages..."
  pip3 install --upgrade pip
  pip3 install \
    pycryptodome \
    requests \
    pillow \
    pyyaml
  echo "Python packages installation completed!"
}

# Export functions so they can be called
export -f UBUNTU_PACKAGES
export -f PYTHON_PACKAGES
