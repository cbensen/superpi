sudo mkdir -p /nfs/client1
sudo rsync -xa --progress --exclude /nfs / /nfs/client1

cd /nfs/client1
sudo mount --bind /dev dev
sudo mount --bind /sys sys
sudo mount --bind /proc proc
sudo chroot .
rm /etc/ssh/ssh_host_*
dpkg-reconfigure openssh-server
exit

sudo umount dev
sudo umount sys
sudo umount proc

sudo rm /nfs/client1/var/swap

# Tar and copy to Ubuntu server:
sudo tar -cpf /nfs.tar /nfs
