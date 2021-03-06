FROM ubuntu

RUN apt-get update \
    && apt-get install -y \
    build-essential \
    python3 \
    curl \
    unzip \
    less \
    groff \
    jq

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip
RUN ./aws/install

CMD "/bin/bash"
