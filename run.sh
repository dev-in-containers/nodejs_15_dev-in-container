#!/usr/bin/env bash
cd `dirname $0`

docker run --rm -v ${PWD}/src:/home/developer/src -it --name nodejs_15_dev nodejs_15_dev /usr/bin/fish
