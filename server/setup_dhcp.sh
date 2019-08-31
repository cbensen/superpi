$ sudo apt-get install isc-dhcp-server
$ sudo nano /etc/dhcp/dhcpd.conf

default-lease-time 86400;
max-lease-time 86400;

authoritative;

log-facility local7;

subnet 192.168.68.0 netmask 255.255.255.0 {
  range 192.168.68.150 192.168.68.200;

  option domain-name-servers 192.168.68.107, 8.8.8.8, 8.8.4.4;
  option routers 192.168.68.1;

  next-server 192.168.68.107;
  option tftp-server-name "192.168.68.107";
}
