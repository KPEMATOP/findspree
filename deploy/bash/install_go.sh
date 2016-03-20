#!/usr/bin/env bash

wget https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.6.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
rm go1.6.linux-amd64.tar.gz
