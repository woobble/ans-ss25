FROM mcr.microsoft.com/devcontainers/base:noble

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && \
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

RUN pip uninstall setuptools --break-system-packages --yes
RUN pip install setuptools==67.6.1 --break-system-packages

RUN pip install ryu --break-system-packages
RUN pip install mininet --break-system-packages

RUN pip uninstall --yes eventlet --break-system-packages --yes
RUN pip install eventlet==0.30.2 --break-system-packages

RUN pip install networkx --break-system-packages
RUN pip install matplotlib --break-system-packages