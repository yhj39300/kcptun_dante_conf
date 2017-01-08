#!/bin/sh

kcptun -l :1755 -t 127.0.0.1:1080 -crypt salsa20 -mode fast2 -mtu 1400 -sndwnd 2048 -rcvwnd 2048 -log /var/log/kcptun.log &
