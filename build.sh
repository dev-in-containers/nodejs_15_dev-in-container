#!/usr/bin/env bash
cd `dirname $0`

docker build . -t nodejs_15_dev
