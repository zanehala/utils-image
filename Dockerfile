FROM alpine

RUN apk add --no-cache\
    curl \
    python3 \
    terraform \
    git \
    make \
    jq \
    py3-pip \
    bash \
    kcat \
    openssl \
    bind-tools \
    drill \
    iperf \
    iftop \
    nmap \
    net-tools \
    speedtest-cli

WORKDIR /tmp

# Install AWS CLI
RUN pip3 --no-cache-dir install awscli

# Install Kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl \
    && rm -rf kubectl

# Install Helm
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 \ 
    && chmod 700 get_helm.sh \
    && ./get_helm.sh \
    && rm -rf get_helm.sh

WORKDIR /

ENTRYPOINT [ "bash" ]