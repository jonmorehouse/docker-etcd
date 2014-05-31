FROM coreos/etcd
MAINTAINER Jon Morehouse <jontmorehouse@gmail.com>

# add data to environment
ADD src /seed

# initialize and run seed script
ADD bin/seed /usr/local/bin/
RUN chmod +x /usr/local/bin/seed
RUN seed 

# Add new entrypoint
ENTRYPOINT /bin/bash

