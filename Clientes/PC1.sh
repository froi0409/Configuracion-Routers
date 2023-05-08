#!/bin/bash -ex

# Declaración de variables
ip_addr="10.10.20.74";
gate_addr="10.10.20.73";

# Indicamos el usuario que queremos conectar
echo "Ingrese el número de dispositivo que se conectará";
read dispositivo;

case $dispositivo in
    "1_1" )
        ip_addr="10.10.20.74";
        gate_addr="10.10.20.73";
        ;;
    "1_2" )
        ip_addr="10.10.20.75";
        gate_addr="10.10.20.73";
        ;;
    "1_3" )
        ip_addr="10.10.20.76";
        gate_addr="10.10.20.73";
        ;;
    "1_4" )
        ip_addr="10.10.20.77";
        gate_addr="10.10.20.73";
        ;;
    "2_1" )
        ip_addr="10.10.20.82";
        gate_addr="10.10.20.81";
        ;;
    "2_2" )
        ip_addr="10.10.20.83";
        gate_addr="10.10.20.81";
        ;;
    "2_3" )
        ip_addr="10.10.20.84";
        gate_addr="10.10.20.81";
        ;;
    "2_4" )
        ip_addr="10.10.20.85";
        gate_addr="10.10.20.81";
        ;;
    "3_1" )
        ip_addr="10.10.20.90";
        gate_addr="10.10.20.89";
        ;;
    "3_2" )
        ip_addr="10.10.20.91";
        gate_addr="10.10.20.89";
        ;;
    "3_3" )
        ip_addr="10.10.20.92";
        gate_addr="10.10.20.89";
        ;;
    "3_4" )
        ip_addr="10.10.20.93";
        gate_addr="10.10.20.89";
        ;;
    "4_1" )
        ip_addr="10.10.20.98";
        gate_addr="10.10.20.97";
        ;;
    "4_2" )
        ip_addr="10.10.20.99";
        gate_addr="10.10.20.97";
        ;;
    "4_3" )
        ip_addr="10.10.20.100";
        gate_addr="10.10.20.97";
        ;;
    "4_4" )
        ip_addr="10.10.20.101";
        gate_addr="10.10.20.97";
        ;;
    "5_1" )
        ip_addr="10.10.20.106";
        gate_addr="10.10.20.105";
        ;;
    "5_2" )
        ip_addr="10.10.20.107";
        gate_addr="10.10.20.105";
        ;;
    "5_3" )
        ip_addr="10.10.20.108";
        gate_addr="10.10.20.105";
        ;;
    "5_4" )
        ip_addr="10.10.20.109";
        gate_addr="10.10.20.105";
        ;;
esac


# Configuración de interfaces
cat <<EOF > /etc/network/interfaces
# The loopback network interface
auto lo
iface lo inet loopback

# SSH
auto enp1s0
iface enp1s0 inet static
 address 192.168.122.30
 netmask 255.255.255.0
 gateway 192.168.122.1

# Configuración de Red
allow-hotplug enp7s0
iface enp7s0 inet static
 address $ip_addr
 netmask 255.255.255.248
 gateway $gate_addr

EOF

echo "Se terminaron de configurar las interfaces"

# reiniciamos la red
# systemctl restart networking
ifdown enp7s0
ifup enp7s0

# Visualizamos las ip_addr
ip -c a
