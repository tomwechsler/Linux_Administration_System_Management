nmcli connection show

cat /etc/sysconfig/network-scripts/ifcfg-enp0s8

nmcli connection modify System\ enp0s8 ipv4.addresses 192.168.33.11/24,172.16.1.2/16

cat /etc/sysconfig/network-scripts/ifcfg-enp0s8