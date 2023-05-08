#!/bin/bash -ex

# Paquetes necesarios
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install net-tools iw wireless-tools bridge-utils

# Creación de puentes
sudo brctl addbr bridgeR1_R2
sudo brctl addbr bridgeR2_R1
sudo brctl addbr bridgeR2_R3
sudo brctl addbr bridgeR3_R4
sudo brctl addbr bridgeR4_R5

sudo brctl addbr bridgeR1_R8
sudo brctl addbr bridgeR2_R8
sudo brctl addbr bridgeR3_R8
sudo brctl addbr bridgeR4_R8
sudo brctl addbr bridgeR5_R8
sudo brctl addbr bridgeR6_R8
sudo brctl addbr bridgeR7_R8

# Redes Internas
sudo brctl addbr lanE1
sudo brctl addbr lanE2
sudo brctl addbr lanE3
sudo brctl addbr lanE4
sudo brctl addbr lanE5
sudo brctl addbr lanE6
sudo brctl addbr lanE7
sudo brctl addbr lanE8

# Levantando Puentes
sudo ip link set dev bridgeR1_R2 up
sudo ip link set dev bridgeR2_R3 up
sudo ip link set dev bridgeR3_R4 up
sudo ip link set dev bridgeR4_R5 up

sudo ip link set dev bridgeR1_R8 up
sudo ip link set dev bridgeR2_R8 up
sudo ip link set dev bridgeR3_R8 up
sudo ip link set dev bridgeR4_R8 up
sudo ip link set dev bridgeR5_R8 up
sudo ip link set dev bridgeR6_R8 up
sudo ip link set dev bridgeR7_R8 up

# Levantando puentes de redes Internas
sudo ip link set dev lanE1 up
sudo ip link set dev lanE2 up
sudo ip link set dev lanE3 up
sudo ip link set dev lanE4 up
sudo ip link set dev lanE5 up
sudo ip link set dev lanE6 up
sudo ip link set dev lanE7 up
sudo ip link set dev lanE8 up

#Mostramos los puentes que hemos levantado 
sudo brctl show
