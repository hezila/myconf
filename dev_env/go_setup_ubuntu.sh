#!/bin/bash

echo "clone the repo and add to user dictory"
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

echo "begin install go1.4 ..."
gvm install go1.4

echo "use go1.4 to bootstrap"
gvm use go1.4
export GOROOT_BOOTSTRAP=$GOROOT
gvm install go1.5
