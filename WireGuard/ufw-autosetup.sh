#bash script start.

read -p "This is an experimental and work in progress script, before proceeding make sure you have UFW installed press Enter to continue"
#Disclaimer

sudo ufw status
# Check if it's running.
sudo ufw default deny outgoing
# Denies outgoing packets
sudo ufw default deny incoming
# Denies Incoming packets
sudo ufw allow out 51820/udp
# Adds allowed ports, 51820 is for general traffic and authentication
sudo ufw allow out on wg0 from any to any
# Allow traffic out of the VPN's virtual adapter
sudo ufw allow in on wg0 from any to any
# Allow traffic in to the VPN's virtual adapter
read -p "Setup complete, use (sudo ufw enable) to start, (sudo ufw disable) to stop. Press Enter to exit"
# Script complete.

#bash script end.