# aws-cli + terraform docker image

The official [aws-cli docker image](https://hub.docker.com/r/amazon/aws-cli)
keeps killing my terminal. It's built such that you can't run a shell on it,
which I find very frustrating. So, this is my own docker image with the aws-cli
and terraform installed.

## Usage

Build the image with `make build`

See the included `shell.sh` script to see how to run the image.
