# Update:
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

# Update firmware
#sudo apt-get install rpi-update
#sudo rpi-update

# Disable swap:
sudo dphys-swapfile swapoff
sudo dphys-swapfile uninstall
sudo update-rc.d dphys-swapfile remove

# Disable HDMI
sudo bash -c "echo /usr/bin/tvservice -off >> /etc/rc.local"

# Disable Bluetooth
sudo systemctl disable bluetooth
sudo service bluetooth stop

#Disable Wifi
sudo systemctl disable hciuart
sudo service  hciuart stop

# Install rsync
sudo apt-get install -y rsync

# Restart
echo "log back in and run >bash clone.sh"
sudo reboot
