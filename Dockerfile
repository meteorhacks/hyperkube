FROM debian:wheezy

ENV VERSION=v0.14.2

COPY build_kubernetes.sh /tmp/build_kubernetes.sh
RUN sh /tmp/build_kubernetes.sh