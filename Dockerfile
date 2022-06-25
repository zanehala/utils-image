FROM alpine
RUN apk add \
    curl \
    python3 \
    terraform \
    git \
    make

