#!/usr/bin/env bash

#This little script lives at /usr/local/bin/php
#It allows my IDE to use a containerized copy of PHP, mirroring my development environment.

docker run -i -p 8000:8000 --rm -v ${PWD}:${PWD} -v /tmp/:/tmp/ -w ${PWD} --sig-proxy=true --pid=host exozet/php-fpm:7.3-sudo php $@
