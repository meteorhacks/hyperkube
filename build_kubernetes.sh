## Deps
apt-get update
apt-get install -y build-essential wget rsync ca-certificates
update-ca-certificates

cd /tmp

## Install Golang
wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.4.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

## Build Kubernetes
wget https://github.com/GoogleCloudPlatform/kubernetes/archive/$VERSION.tar.gz
tar xzf $VERSION.tar.gz
pwd
ls
cd /tmp/kubernetes*
make

## Copy hyperkube to /
ls
cp ./_output/local/bin/linux/amd64/hyperkube /

## Cleanup to reduce the size
rm -rf /tmp/*
apt-get remove -y build-essential wget
apt-get clean -y
apt-get autoremove -y
rm -rf /usr/local/go