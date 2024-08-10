# incus-prov
* Provision script for Incus containers/VM's


Small script to provision Incus/LXD system containers for the lab

* Example files provided
* User password for this example: FOSS2024
* Private key if needed:

```
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW
QyNTUxOQAAACB/1ybNcz2uq+p+/WpqoD2V8Q95FpzCGJvctBPqPCqjjgAAAKBEkrWIRJK1
iAAAAAtzc2gtZWQyNTUxOQAAACB/1ybNcz2uq+p+/WpqoD2V8Q95FpzCGJvctBPqPCqjjg
AAAEBaQbIcoi6JA1mcihFgJiRxeUlaMTSLuGYS64EdIr3Q0H/XJs1zPa6r6n79amqgPZXx
D3kWnMIYm9y0E+o8KqOOAAAAG2dpdGV4YW1wbGUtZWQyNTUxOS0yMDI0MDgwMQEC
-----END OPENSSH PRIVATE KEY-----
```
NOTE: Do not use these creds in production this is for prototype lab testing use

Example provision list will spin up various containers this has been tested with, using a profile called prod-mgt which can be specified in this file
File is laid out: Name,IP_address,profile,cloud image
```
Bookworm,192.168.0.217,prod-mgt,debian/12/cloud
Noble1,192.168.0.218,prod-mgt,ubuntu/noble/cloud
Jammy1,192.168.0.219,prod-mgt,ubuntu/jammy/cloud
Centos9,192.168.0.220,prod-mgt,centos/9-Stream/cloud
Alma9,192.168.0.221,prod-mgt,almalinux/9/cloud
Oracle9,192.168.0.222,prod-mgt,oracle/9/cloud
Rocky1,192.168.0.223,prod-mgt,rockylinux/9/cloud
Fedora40,192.168.0.224,prod-mgt,fedora/40/cloud
```
Change to your use case/needs
