FROM debian:wheezy

## This is the version 0.19.1 + some more commits
## 0.19.1 does show IP address of the pod when invoked `kubectl describe`
## There is a merged PR in the following version
## That's why we are using it.
ENV VERSION=ff0546da4fc23598de59db9f747c535545036463

COPY build_kubernetes.sh /tmp/build_kubernetes.sh
RUN sh /tmp/build_kubernetes.sh
