#!/bin/bash -ex

# Levantamos interfaces
ifdown enp7s0
ifdown enp10s0
ifdown enp11s0
ifup enp7s0
ifup enp10s0
ifup enp11s0

# Agregamos routes
ip route add 10.10.20.72/29 dev enp10s0
ip route add 10.10.20.80/29 dev enp10s0
ip route add 10.10.20.88/29 dev enp10s0
ip route add 10.10.20.96/29 dev enp10s0
ip route add 10.10.20.156/30 dev enp11s0
ip route add 10.10.20.160/30 dev enp11s0


# Bloqueamos rutas con iptables
# Dispositivo 17 - 10.10.20.106
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.74 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.75 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.76 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.77 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.82 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.84 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.85 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.90 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.91 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.93 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.98 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.99 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.100 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.101 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.158 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.106 -d 10.10.20.162 -p icmp --icmp-type echo-request -j DROP

# Dispositivo 18 - 10.10.20.107
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.74 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.75 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.76 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.82 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.83 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.84 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.85 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.90 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.91 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.92 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.93 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.98 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.99 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.100 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.101 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.107 -d 10.10.20.158 -p icmp --icmp-type echo-request -j DROP

# Dispositivo 19 - 10.10.20.108
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.75 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.76 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.77 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.82 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.83 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.85 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.90 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.91 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.92 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.98 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.99 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.100 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.101 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.108 -d 10.10.20.162 -p icmp --icmp-type echo-request -j DROP

# Dispositivo 20 - 10.10.20.109
iptables -A FORWARD -s 10.10.20.109 -d 10.10.20.74 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.109 -d 10.10.20.75 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.109 -d 10.10.20.83 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.109 -d 10.10.20.84 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.109 -d 10.10.20.85 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.109 -d 10.10.20.90 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.109 -d 10.10.20.91 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.109 -d 10.10.20.92 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.109 -d 10.10.20.93 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.109 -d 10.10.20.98 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.109 -d 10.10.20.99 -p icmp --icmp-type echo-request -j DROP
iptables -A FORWARD -s 10.10.20.109 -d 10.10.20.100 -p icmp --icmp-type echo-request -j DROP


