#!/bin/bash -ex

# Levantamos interfaces
ifdown enp7s0
ifdown enp10s0
ifdown enp11s0
ifup enp7s0
ifup enp10s0
ifup enp11s0

# Agregamos routes
ip route add 10.10.20.80/29 dev enp10s0
ip route add 10.10.20.88/29 dev enp10s0
ip route add 10.10.20.96/29 dev enp10s0
ip route add 10.10.20.104/29 dev enp10s0
ip route add 10.10.20.156/30 dev enp11s0
ip route add 10.10.20.160/30 dev enp11s0

# Bloqueamos rutas con iptables
# Dispositivo 1 - 10.10.20.74
iptables -A FORWARD -s 10.10.20.74 -d 10.10.20.82 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.74 -d 10.10.20.83 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.74 -d 10.10.20.84 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.74 -d 10.10.20.90 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.74 -d 10.10.20.92 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.74 -d 10.10.20.93 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.74 -d 10.10.20.99 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.74 -d 10.10.20.106 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.74 -d 10.10.20.107 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.74 -d 10.10.20.109 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.74 -d 10.10.20.162 -p icmp --icmp-type echo-request -j DROP

# Dispositivo 2 - 10.10.20.75
iptables -A FORWARD -s 10.10.20.75 -d 10.10.20.82 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.75 -d 10.10.20.84 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.75 -d 10.10.20.85 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.75 -d 10.10.20.90 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.75 -d 10.10.20.92 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.75 -d 10.10.20.98 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.75 -d 10.10.20.99 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.75 -d 10.10.20.100 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.75 -d 10.10.20.101 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.75 -d 10.10.20.106 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.75 -d 10.10.20.108 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.75 -d 10.10.20.109 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.75 -d 10.10.20.158 -p icmp --icmp-type echo-request -j DROP

# Dispositivo 3 - 10.10.20.76
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.82 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.83 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.84 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.85 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.91 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.92 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.93 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.98 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.100 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.106 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.107 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.109 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.158 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.76 -d 10.10.20.162 -p icmp --icmp-type echo-request -j DROP

# Dispositivo 4 - 10.10.20.77
iptables -A FORWARD -s 10.10.20.77 -d 10.10.20.82 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.77 -d 10.10.20.83 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.77 -d 10.10.20.84 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.77 -d 10.10.20.85 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.77 -d 10.10.20.90 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.77 -d 10.10.20.91 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.77 -d 10.10.20.92 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.77 -d 10.10.20.98 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.77 -d 10.10.20.101 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.77 -d 10.10.20.108 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.77 -d 10.10.20.109 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.77 -d 10.10.20.158 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.77 -d 10.10.20.162 -p icmp --icmp-type echo-request -j DROP


