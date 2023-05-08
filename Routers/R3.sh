#!/bin/bash -ex

# Levantamos interfaces
ifdown enp8s0
ifdown enp9s0
ifdown enp10s0
ifup enp8s0
ifup enp9s0
ifup enp10s0

# Agregamos routes
ip route add 10.10.20.72/29 dev enp8s0
ip route add 10.10.20.80/29 dev enp8s0
ip route add 10.10.20.96/29 dev enp9s0
ip route add 10.10.20.104/29 dev enp9s0
ip route add 10.10.20.148/30 dev enp10s0
ip route add 10.10.20.152/30 dev enp10s0

# Agregamos iptables

# Bloqueamos rutas con iptables
# Dispositivo 9 - 10.10.20.90
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.74 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.75 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.76 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.77 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.82 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.83 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.84 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.85 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.98 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.99 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.100 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.101 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.106 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.107 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.108 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.109 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.90 -d 10.10.20.162 -p icmp --icmp-type echo-request -j DROP

# Dispositivo 10 - 10.10.20.91
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.74 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.75 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.76 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.77 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.82 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.83 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.85 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.98 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.99 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.100 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.101 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.106 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.107 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.108 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.109 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.91 -d 10.10.20.158 -p icmp --icmp-type echo-request -j DROP

# Dispositivo 11 - 10.10.20.92
iptables -A FORWARD -s 10.10.20.92 -d 10.10.20.74 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.92 -d 10.10.20.76 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.92 -d 10.10.20.82 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.92 -d 10.10.20.83 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.92 -d 10.10.20.84 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.92 -d 10.10.20.85 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.92 -d 10.10.20.98 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.92 -d 10.10.20.100 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.92 -d 10.10.20.101 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.92 -d 10.10.20.106 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.92 -d 10.10.20.108 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.92 -d 10.10.20.109 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.92 -d 10.10.20.158 -p icmp --icmp-type echo-request -j DROP

# Dispositivo 12 - 10.10.20.93
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.74 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.75 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.76 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.77 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.83 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.84 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.85 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.98 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.99 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.100 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.101 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.106 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.107 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.108 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.109 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.93 -d 10.10.20.158 -p icmp --icmp-type echo-request -j DROP

