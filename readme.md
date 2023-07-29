Hello.

These are three scripts to autoadd a Surfshark configuration for our Germany Frankfurt server for three of the main connection methods.

This is mainly optimized for Arch based systems. I use Manjaro so I base this off Manjaro.

Instructions are included alongside each installer.

WireGuard - Autoimport, UFW
OpenVPN UDP - Autoimport, UFW
OpenVPN TCP - Autoimport, UFW
IKEv2 - (Plausible to make the process easier), UFW.

This will utilize NM to connect to the VPN, please note that you will need to add your connection credentials, public keys manually.

It also has an autocompile script for the Uncomplicated Firewall featuring a setup that will automatically block ports for you and work as a prevention to make sure the connection does not drop leaking your real IP and lcoation.

**Instructions for using the Autoconfigure UDP / TCP script.**

Both UDP and TCP follow the same process, so just replace UDP with TCP where neccesary.

1. Download the OpenVPN file from my.surfshark.com VPN > Manual Setup > Computer > OpenVPN > Locations. For the time being we need the Frankfurt UDP file but you can use this with any configuration. Read bellow for comments.
2. Run the script.
3. Once it's done, add your credentials from the "Credentials" tab in "Network Manager" or "Advanced Netowrk Properties" under DE-FRA-UDP
4. Connect via the GUI. Or via this command
sudo nmcli up DE-FRA-UDP
5. Check the connection with surfshark.com/check

You're done!

**Instructions for running the WireGuard autoimport script.**

1. Download your configuration file from my.surfshark.com
2. Rename and adjust script to the server you will be using, in my case I used de-fra.
3. Add private key to the script. You can generate a new one or recover an old key in my.surfshark.com
4. Run script.
5. By default, it's commited to autoconnect, disable this in the "General" tab if not desired.

**Instructions for using the UFW auto-configurator. This is for works the same way for each protocol, just use the respective script**

**MAKE SURE UFW IS INSTALLED PRIOR TO RUNNING THE SCRIPT.**

Debian:
sudo apt install ufw
sudo apt update
sudo apt upgrade

Arch:
sudo pacman -S ufw
sudo pacman -Syu

1. Connect to the VPN.
2. Run the script.
3. Enable UFW with sudo ufw enable if used in the wrong way, you will get a no-net ;)
4. Check for connection leaks in surfshark.com/check
5. Disable the VPN and check if you can reach any websites.

You can disable UFW with this command
sudo ufw disable.

And that's it, you're done!