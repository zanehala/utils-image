FROM alpine
RUN apk add --no-cache\
    curl \
    python3 \
    terraform \
    git \
    make \
    jq \
    py3-pip\
    bash

RUN pip3 install awscli

ENTRYPOINT [ "bash" ]