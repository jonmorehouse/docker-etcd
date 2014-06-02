FROM coreos/etcd
MAINTAINER Jon Morehouse <jontmorehouse@gmail.com>

# set environment paths
ENV ETCD_HOST localhost
ENV ETCD_PORT 4001
ENV ENV dev
ENV SEED_PATH /seed

# add data to environment
ADD src /seed

# initialize and run seed script
ADD bin/ /usr/local/bin/
RUN chmod +x /usr/local/bin/*
RUN build

# Add new entrypoint
ENTRYPOINT ["/usr/local/bin/start"]
