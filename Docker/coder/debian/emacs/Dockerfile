FROM ubuntu:bionic

# Initial requirement - software-properties-common
RUN apt-get update && apt-get install software-properties-common -y

# Added repositories along with update and upgrade
RUN add-apt-repository -y ppa:git-core/ppa
RUN add-apt-repository -y ppa:peek-developers/stable
RUN apt-get update && apt-get upgrade -y

# Apt installations
RUN apt-get install -y \
  bash-completion \
  binutils \
  bison \
  build-essential \
  curl \
  emacs \
  gcc \
  golang-go \
  git \
  jq \
  locales \
  make \
  mercurial \
  npm \
  rsync \
  tig \
  tree \
  vim \
  xclip
