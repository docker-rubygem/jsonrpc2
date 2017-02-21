FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.1

RUN gem install jsonrpc2 --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jsonrpc2"]
CMD ["--help"]
