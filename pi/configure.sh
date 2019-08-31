

echo "TODO change password Run >sudo raspi-config"
echo "TODO set timezone"

# Turn on SSH
sudo raspi-config nonint do_ssh 0

# Set locale and keyboard layout
sudo raspi-config nonint do_change_locale en_US.UTF-8
sudo raspi-config nonint do_configure_keyboard us

# Restart
echo "log back in and run >bash setup.sh"
sudo reboot