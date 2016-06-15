#!/bin/bash

/etc/init.d/setkey restart
/etc/init.d/racoon restart

ip addr add ${HOME_NET} dev eth0
ip route add to ${OVER_NET} via ${GATE} src ${GATE}