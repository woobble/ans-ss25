#!/bin/env bash

set -e

apt-get update

export DEBIAN_FRONTEND=noninteractive

apt-get update && \
    apt-get install -y --no-install-recommends \
    sudo \
    git \
    curl \
    net-tools \
    iproute2 \
    iputils-ping \
    openvswitch-switch \
    mininet \
    python3 \
    python3-pip \
    python3-setuptools \
    build-essential \
    flex \
    bison \
    python3-dev \
    libffi-dev \
    libssl-dev \
    libxml2-dev \
    libxslt1-dev \
    zlib1g-dev \
    socat \
    ethtool \
    xterm \
    wireshark \
    tshark \
    tcpdump \
    git && \
    apt-get clean

pip uninstall setuptools --break-system-packages --yes
pip install setuptools==67.6.1 --break-system-packages

pip install ryu --break-system-packages
pip install mininet --break-system-packages

pip uninstall --yes eventlet --break-system-packages --yes
pip install eventlet==0.30.2 --break-system-packages

pip install networkx --break-system-packages
pip install matplotlib --break-system-packages