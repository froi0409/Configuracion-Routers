#!/bin/bash -ex

# Levantamos interfaces
ifdown enp7s0
ifdown enp8s0
ifup enp7s0
ifup enp8s0

# Agregamos routes
ip route add 10.10.20.72/29 dev enp8s0
ip route add 10.10.20.80/29 dev enp8s0
ip route add 10.10.20.88/29 dev enp8s0
ip route add 10.10.20.96/29 dev enp8s0
ip route add 10.10.20.104/29 dev enp8s0
