1. Download Pi Raspbian Buster Lite:
https://downloads.raspberrypi.org/raspbian_lite_latest

2. Download Etcher balenaEtcher-1.5.52.dmg
https://github.com/balena-io/etcher/releases/download/v1.5.52/balenaEtcher-1.5.52.dmg

3. Flash SD card with image

4. Put SD card into Raspberry Pi and turn it on

5. Login:
username: pi
password: raspberry

6. Run
sudo raspi-config

7. Change password
8. Choose Interfaces, enable SSH
9. quit raspi-config

10. Get IP Address
ping raspberrypi.local

11. From another computer run:
bash upload.sh pi@IP_ADDESS_OF_PI

12. Connect to the Pi:
ssh pi@IP_ADDESS_OF_PI

13. Start by running (then follow the scripts directions):
bash start.sh