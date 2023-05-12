#!/bin/bash

apt-get update -qq\
&& apt-get install make -yqq && apt-get install hugo -yqq && apt-get install wget -yqq \
&& wget -qq https://github.com/gohugoio/hugo/releases/download/v0.84.1/hugo_extended_0.84.1_Linux-64bit.tar.gz \
&& tar -xzvf hugo_extended_0.84.1_Linux-64bit.tar.gz \
&& mv hugo /usr/local/bin/ \
&& rm hugo_extended_0.84.1_Linux-64bit.tar.gz && make build -s