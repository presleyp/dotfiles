FROM ubuntu:bionic

# Initial requirement - software-properties-common
RUN apt-get update && apt-get install software-properties-common -y

# Added repositories along with update and upgrade
RUN add-apt-repository -y ppa:git-core/ppa
RUN add-apt-repository -y ppa:peek-developers/stable
RUN apt-get update && apt-get upgrade -y

# Apt installations
RUN apt-get install -y \
  binutils \
  bison \
  build-essential \
  curl \
  gcc \
  golang-go \
  git \
  jq \
  make \
  mercurial \
  npm \
  tig \
  tree \
  vim \
  xclip

# Coder scripts
COPY [ "configure", "/coder/configure" ]
