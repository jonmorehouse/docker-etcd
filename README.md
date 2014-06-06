# Docker Etcd
> Etcd deployment for production/development environments on various apps

## Usage

Start an etcd service and optionally specify a file to seed key values from.

Docker etcd uses [etcd-seed](https://github.com/jonmorehouse/etcd-seed) to fill the service at runtime.

Install Dependencies
~~~ bash
$ pip install -r requirements.txt
$ npm install -g etcd-seed
~~~

Now start a new seeded etcd-instance
~~~ bash
$ export CONTAINER_HOST=$(echo $DOCKER_HOST | awk -F':' '{ print $2 }' | sed "s|/||g")
$ export ETCD_HOST=$CONTAINER_HOST
$ export ETCD_PORT=4001

# clone docker-etcd
$ git clone git@github.com:jonmorehouse/docker-etcd

# start a new container with a seed file
$ ./bin/detcd -p 4001 ~/some_seed_file.yml
~~~


## Setting Up Docker

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

## Hacking

This is still a pretty early project. Feel free to fork and upload your own scripts to keep this growing. 

I use etcd in almost all of my projects so I'm maintaining a private fork of this project where I add in custom src/*toml files for various projects. I simply start etcd on different ports as I need it. 
