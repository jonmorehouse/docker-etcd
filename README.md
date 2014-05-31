# Docker Etcd
> Etcd deployment for production/development environments on various apps

## Development

Set up docker
~~~ bash
# mac - start docker on a vagrant virtualbox
$ git clone jonmorehouse/coreos-vagrant
$ vagrant up
$ export DOCKER_HOST=tcp://localhost:4243

# linux
$ sudo apt-get update
$ sudo apt-get install -y docker.io
$ sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker
~~~

Start the etcd container listening on 4001
~~~ bash
# now run docker-etcd. This will bootstrap etcd and run on port 4001 by default
$ docker run jonmorehouse/etcd -e "ENV=development"
~~~

Set environment to point to correct etcd installation
~~~ bash
$ export ETCD_HOST=localhost
$ export ETCD_PORT=4001
~~~


