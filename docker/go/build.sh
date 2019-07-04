#!/usr/bin/env bash

_dir=$(cd "$(dirname "$0")"; pwd)
cd $_dir

_dirname=`basename $_dir`

echo $_dirname
docker build -t i6du/$_dirname:latest . 

