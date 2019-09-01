sudo apt-get install -y nfs-kernel-server
$ cd /home/gluon-server/Downloads/raspbian32
$ sudo tar --same-owner -xvf nfs.tar 
$ sudo mv nfs/client1/ /nfs

$echo "/nfs/client1 *(rw,sync,no_subtree_check,no_root_squash)" | sudo tee -a /etc/exports
$ sudo systemctl enable rpcbind
$ sudo systemctl restart rpcbind
$ sudo systemctl enable nfs-kernel-server
$ sudo systemctl restart nfs-kernel-server

$ sudo nano /tftpboot/cmdline.txt 
(Remove content and add:)
selinux=0 dwc_otg.lpm_enable=0 console=tty1 rootwait rw nfsroot=192.168.68.107:/nfs/client1,v3 ip=dhcp root=/dev/nfs elevator=deadline modprobe.blacklist=bcm2835_v4l2

$ cd /nfs/client1/etc
$ sudo nano localhost
localhost

$ cd /nfs/client1/etc/dhcp/dhclient-enter-hooks.d/
$ sudo nano unset_old_hostname
unset old_host_name

$ sudo nano /nfs/client1/etc/fstab
(remove all entries after first line)
