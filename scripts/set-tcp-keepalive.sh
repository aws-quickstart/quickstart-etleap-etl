#!/bin/bash

cat <<EOF | sudo tee -a /etc/sysctl.conf
net.ipv4.tcp_keepalive_time=45
net.ipv4.tcp_keepalive_intvl=45
net.ipv4.tcp_keepalive_probes=5
EOF
sudo sysctl -p
