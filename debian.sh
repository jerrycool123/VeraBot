#!/bin/bash

# Insall Python 3.10.6
apt-get update && apt-get upgrade -y
apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
wget https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tgz
tar -xf Python-3.10.6.tgz
cd Python-3.10.6/
./configure --enable-optimizations
make -j $(nproc)
make altinstall

# Install pip
apt install -y python3-pip

# Install tesserocr dependencies
apt install -y tesseract-ocr libtesseract-dev libleptonica-dev pkg-config