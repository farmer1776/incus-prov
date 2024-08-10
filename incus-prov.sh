#! /bin/bash
# Rudimentary script to provision incus instances using cloud-init config for network
# Tested on Rocky Linux 9, Alma Linux 9, CentOS 9, Oracle9, Fedora40, Focal, Jammy, Noble, Bookworm
while IFS=',' read -r name_c1 ip_c2 prof_c3 image_c4
do
    file=v1-$ip_c2.yaml
incus launch images:$image_c4 "$name_c1" -p $prof_c3 -c cloud-init.network-config="version: 1
config:
  - type: physical
    name: eth0
    subnets:
      - type: static
        address: $ip_c2/24
        gateway: 192.168.0.1
  - type: nameserver
    address:
      - 192.168.50.50
      - 192.168.0.1
    search:
       - example.lan
" < /dev/null
done <  prov-list
exit
