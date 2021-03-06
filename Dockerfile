FROM docker:stable-dind

RUN apk add --no-cache \
    python3 python3-dev py3-pip gcc git curl build-base \
    autoconf automake py3-cryptography linux-headers \
    musl-dev libffi-dev openssl-dev openssh cargo unzip 

RUN python3 -m pip install ansible molecule[docker] yamllint ansible-lint pytest pytest-testinfra
