Dockerfile for running pypy and compatible pip on Ubuntu Trusty prerelease.

This container is on the [docker
index](https://index.docker.io/u/jroll/docker-trusty-pypy/).
It's a trusted build, which means it can only be built from this
repository.

### Usage

```shell
# pull the image down to be used later
$ docker pull jroll/docker-trusty-pypy

# run hello world
$ docker run jroll/docker-trusty-pypy /usr/bin/pypy -c "print 'hello world!'"

# get a pypy shell
$ docker run -t -i -rm jroll/docker-trusty-pypy /usr/bin/pypy -c "print 'hello world!'"
```

### Using this Dockerfile as a base

In your Dockerfile, just use `FROM jroll/docker-trusty-pypy`. Then you
will have both `pypy` and `pip` available. Both binaries are located in
`/usr/local/bin`.
