ls /etc/netplan/

netplan ip leases enp0s3

vim /etc/netplan/50-vagrant.yaml

netplan try

netplan apply