docker-mutt
==============

This repo provides the steps necessary to build a
[mutt](http://www.mutt.org/) [vim](http://www.vim.org/) docker image.

Docker registry
---------------

This image is available at: [hub.docker.com/r/dennismp/mutt/](https://hub.docker.com/r/dennismp/mutt/)

Build manually
--------------

```
$ git clone https://github.com/dennis/docker-mutt
$ docker build --rm -t dennismp/mutt .
```

Running
-------

Standalone:
```
docker run -ti --rm --name=mutt -v /var/volumes/mutt:/mutt dennismp/mutt
```
