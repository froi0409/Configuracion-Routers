#!/bin/bash -ex

# Levantamos interfaces
ifdown enp1s0
ifdown enp7s0
ifdown enp8s0
ifdown enp9s0
ifdown enp10s0
ifdown enp11s0
ifdown enp12s0
ifdown enp13s0

ifup enp1s0
ifup enp7s0
ifup enp8s0
ifup enp9s0
ifup enp10s0
ifup enp11s0
ifup enp12s0
ifup enp13s0

# Agregamos routes
ip route add 10.10.20.72/29 dev enp7s0
ip route add 10.10.20.80/29 dev enp8s0
ip route add 10.10.20.88/29 dev enp9s0
ip route add 10.10.20.96/29 dev enp10s0
ip route add 10.10.20.104/29 dev enp11s0
ip route add 10.10.20.156/30 dev enp12s0
ip route add 10.10.20.160/30 dev enp13s0

