Instructions for using and running the script succesfully.

Instructions for using the Autoconfigure script.
1. Download the OpenVPN file from my.surfshark.com VPN > Manual Setup > Computer > OpenVPN > Locations. For the time being we need the Frankfurt UDP file but you can use this with any configuration. Read bellow for comments.
2. Run the script.
3. Once it's done, add your credentials from the "Credentials" tab in "Network Manager" or "Advanced Netowrk Properties" under DE-FRA-UDP
4. Connect via the GUI. Or via this command
sudo nmcli up DE-FRA-UDP
5. Check the connection with surfshark.com/check
You're done!

Instructions for using the UFW autoconfigurator.

MAKE SURE UFW IS INSTALLED PRIOR TO RUNNING THE SCRIPT.

Debian:
sudo apt install ufw
sudo apt update
sudo apt upgrade

Arch:
sudo pacman -S ufw
sudo pacman -Syu

1. Connect to the VPN.
2. Run the script.
3. Enable UFW with sudo ufw enable
4. Check for connection leaks in surfshark.com/check
5. Disable the VPN and check if you can reach any websites.

You can disable UFW with this command
sudo ufw disable.

And that's it, you're done!