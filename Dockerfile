# Dockerfile for golang based apps - #CentOS, #gimme
# Uses gimme: https://github.com/travis-ci/gimme 

# Example build:
# $ docker build -f Dockerfile --build-arg=GOLANG_VERSION=1.8.1  ./


# For other interesting env vars, read:
# https://raw.githubusercontent.com/travis-ci/gimme/master/gimme

FROM centos:latest
LABEL maintainer "Ricardo Lourenco <rlourenc@redhat.com>"

ARG GOLANG_VERSION=1.8
ARG GIMME_URL=raw.githubusercontent.com/travis-ci/gimme/master/gimme
ARG GIMME_DEBUG=0

RUN eval "$(curl -sL https://$GIMME_URL | \
    GIMME_GO_VERSION="$GOLANG_VERSION" \
    GIMME_DEBUG=$GIMME_DEBUG \
    bash)"

ENV GOPATH /go/src/github.com
ENV PATH="$HOME"/bin:/root/.gimme/versions/go"$GOLANG_VERSION".linux.amd64/bin:/usr/local/go/bin:$PATH

RUN mkdir -p $GOPATH $HOME/bin/ /usr/local/go/bin \
    && echo $PATH && go version

WORKDIR $GOPATH
