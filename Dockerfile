FROM debian:wheezy

ENV VERSION=v0.15.0

COPY build_kubernetes.sh /tmp/build_kubernetes.sh
RUN sh /tmp/build_kubernetes.sh