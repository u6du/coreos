#!/usr/bin/env bash

_dirname=$(cd "$(dirname "$0")"; pwd)


cd /etc/systemd/system/

ln -s $_dirname/service/*.service .
ln -s $_dirname/service/*.timer .

systemctl daemon-reload

systemctl enable --now cloudflare-dns.timer

cd ~ 
if [ ! -d ".bin" ]; then 
ln -s $_dirname/bin/ .bin/
fi

ln -s $_dirname/.bash_profile .
chmod +x ~/.bash_profile
exec ~/.bash_profile
