FROM coreos/etcd
MAINTAINER Jon Morehouse <jontmorehouse@gmail.com>

# set environment paths
ENV ETCD_HOST localhost
ENV ETCD_PORT 4001
ENV ENV dev

# set up etcd-seed
RUN apt-get -y install software-properties-common python-software-properties
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get -y update
# install node most recent stable as well as npm
RUN apt-get -y install nodejs
# symlink nodejs to node
RUN ln -sf `which nodejs` /usr/bin/node
# install etcd-seed and seed etcd
RUN npm install -g coffee-script etcd-seed

# now create seed directory
RUN mkdir /seed

