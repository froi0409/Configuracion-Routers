#!/bin/bash -ex

mount 10.10.20.158:/nfsshare /mnt
df -h

chmod 777 /mnt
