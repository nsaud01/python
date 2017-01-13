#
# Python Dockerfile
#
# https://github.com/dockerfile/python
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y git python python-dev python-pip build-essential python-virtualenv && \
  rm -rf /var/lib/apt/lists/* \
  git clone https://github.com/numberly/mattermost-integration-giphy.git \
  cd mattermost-integration-giphy \
  python setup.py install

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
