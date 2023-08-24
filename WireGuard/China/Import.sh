#bash script start

read -p "Make sure you have read instructions.md and have the dependencies ready, press Enter to continue"
# Disclaimer

sudo nmcli con import type wireguard file ~/Downloads/wireguard/hk-hkg.conf
# Imports file into NetworkManager
sudo nmcli con import type wireguard file ~/Downloads/wireguard/kr-seo.conf
sudo nmcli con import type wireguard file ~/Downloads/wireguard/us-hou.conf
sudo nmcli con import type wireguard file ~/Downloads/wireguard/th-bkk.conf
sudo nmcli con import type wireguard file ~/Downloads/wireguard/uk-man.conf
#Additional imports.

sudo nmcli con modify "hk-hkg" connection.autoconnect no
#Disables autonconnect, can be problematic when importing multiple profiles.
sudo nmcli con modify "uk-man" connection.autoconnect no
sudo nmcli con modify "th-bkk" connection.autoconnect no
sudo nmcli con modify "us-hou" connection.autoconnect no
sudo nmcli con modify "kr-seo" connection.autoconnect no

sudo nmcli con down "hk-hkg"
#Disables connection, as it's normal behaviour is to connect automatically right as it's imported.
sudo nmcli con down "uk-man" 
sudo nmcli con down "th-bkk" 
sudo nmcli con down "us-hou" 
sudo nmcli con down "kr-seo"

#sudo nmcli con modify "de-fra" connection.id "user specified name"
# Disabled by default. use this to rename connection names. example uses regular file name. 

sudo nmcli con modify "hk-hkg" connection.interface-name wg0
# Changes default adapter to something more uniform, handy when using UFW.
sudo nmcli con modify "uk-man" connection.interface-name wg0
sudo nmcli con modify "th-bkk" connection.interface-name wg0
sudo nmcli con modify "us-hou" connection.interface-name wg0
sudo nmcli con modify "kr-seo" connection.interface-name wg0
#Additional imports.

sudo nmcli con modify "hk-hkg" wireguard.mtu 1280
# Changes MTU to acceptable standard for WG. Do not change.
sudo nmcli con modify "uk-man" wireguard.mtu 1280
sudo nmcli con modify "th-bkk" wireguard.mtu 1280
sudo nmcli con modify "us-hou" wireguard.mtu 1280
sudo nmcli con modify "kr-seo" wireguard.mtu 1280
#Additional imports.

sudo nmcli con modify "hk-hkg" wireguard.fwmark 0x51820
# Adds fwmark, do not change.
sudo nmcli con modify "uk-man" wireguard.fwmark 0x51820
sudo nmcli con modify "th-bkk" wireguard.fwmark 0x51820
sudo nmcli con modify "us-hou" wireguard.fwmark 0x51820
sudo nmcli con modify "kr-seo" wireguard.fwmark 0x51820
#Additional imports.

sudo nmcli con modify "hk-hkg" wireguard.listen-port 32
# Adds listen port, do not change.
sudo nmcli con modify "uk-man" wireguard.listen-port 32
sudo nmcli con modify "th-bkk" wireguard.listen-port 32
sudo nmcli con modify "us-hou" wireguard.listen-port 32
sudo nmcli con modify "kr-seo" wireguard.listen-port 32
#Additional imports.

sudo nmcli con mod "hk-hkg" ipv4.dns 162.252.172.57,149.154.159.92
# Adds Surfshark DNS to the connection for better stability and to reduce leaks
sudo nmcli con modify "uk-man" ipv4.dns 162.252.172.57,149.154.159.92
sudo nmcli con modify "th-bkk" ipv4.dns 162.252.172.57,149.154.159.92
sudo nmcli con modify "us-hou" ipv4.dns 162.252.172.57,149.154.159.92
sudo nmcli con modify "kr-seo" ipv4.dns 162.252.172.57,149.154.159.92
#Additional imports.

#sudo nmcli con mod "hk-hkg" ipv4.dns 208.67.222.222,208.67.220.220
#Disabled by default, applies OpenDNS instead of Surfshark DNS.
#sudo nmcli con modify "uk-man" ipv4.dns 208.67.222.222,208.67.220.220
#sudo nmcli con modify "th-bkk" ipv4.dns 208.67.222.222,208.67.220.220
#sudo nmcli con modify "us-hou" ipv4.dns 208.67.222.222,208.67.220.220
#sudo nmcli con modify "kr-seo" ipv4.dns 208.67.222.222,208.67.220.220

#sudo nmcli con mod "hk-hkg" ipv4.dns 1.1.1.1,1.0.0.1
#Disabled by default, applies CloudFlare DNS instead of OpenDNS or SurfsharkDNS
#sudo nmcli con modify "uk-man" ipv4.dns 1.1.1.1,1.0.0.1
#sudo nmcli con modify "th-bkk" ipv4.dns 1.1.1.1,1.0.0.1
#sudo nmcli con modify "us-hou" ipv4.dns 1.1.1.1,1.0.0.1
#sudo nmcli con modify "kr-seo" ipv4.dns 1.1.1.1,1.0.0.1

sudo nmcli con mod "hk-hkg" ipv6.method disabled
# Disables IPv6, as it can interfere with leaks and connections.
sudo nmcli con modify "uk-man" ipv6.method disabled
sudo nmcli con modify "th-bkk" ipv6.method disabled
sudo nmcli con modify "us-hou" ipv6.method disabled
sudo nmcli con modify "kr-seo" ipv6.method disabled
#Additional imports.

nmcli con show
# Lists all current VPN Profiles and Network ConnectionsS

#Use nmcli con up "connection name" to start the connection, nmcli con down "con name" to disable it. Or activate via GUI. 
#This should update the "VPN" tab in your networking toolbar, if the DE supports it.

#bash script end
