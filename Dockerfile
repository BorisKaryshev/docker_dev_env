FROM ubuntu:24.04

RUN bash <<EOF
  apt-get update -y
  apt-get --assume-yes install vim git openssh-client ripgrep wget
EOF

ARG ENABLE_CPP
ARG ENABLE_PYTHON
ARG ENABLE_BASH

RUN bash <<EOF
    set -euo pipefail
    [ "${ENABLE_CPP:-true}" == "true" ] || exit 0
    apt-get --assume-yes install cmake clang clangd clang-format
EOF

COPY requirements.txt .
RUN bash <<EOF
    set -euo pipefail
    [ "${ENABLE_PYTHON:-true}" == "true" ] || exit 0

    apt-get --assume-yes install python3.12 python3-pip
    pip install --break-system-packages pyright
    pip install --break-system-packages -r requirements.txt
EOF

COPY setup_nvim.sh /root
RUN /root/setup_nvim.sh

COPY ssh/config /root/.ssh/
RUN bash <<EOF
    set -eou pipefail
    git config --global user.name "$GITHUB_USERNAME"
    git config --global user.email "$GITHUB_EMAIL"
    git config --global --add safe.directory '*'
EOF

WORKDIR /root/files
