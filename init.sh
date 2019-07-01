#!/usr/bin/env bash

_dirname=$(cd "$(dirname "$0")"; pwd)


cd /etc/systemd/system/

ln -s $_dirname/service/*.service .
ln -s $_dirname/service/*.timer .

systemctl daemon-reload

systemctl enable --now cloudflare-dns.timer

cd ~ 

_home=$_dirname/home

ln -s $_home/.gitconfig .

if [ ! -d ".bin" ]; then 
ln -s $_home/.bin .bin
fi

ln -s $_home/.bash_profile .
. ~/.bash_profile
