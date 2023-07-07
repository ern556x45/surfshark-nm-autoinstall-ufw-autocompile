#bash script start
#Broken for now, ivestigating possible fix


read -p "This is an experimental and work in progress script, before proceeding make sure you have the German WG file downloaded from my.surfshark.com in your downloads folder. If you wish to proceed, press Enter to continue"
# DisclaimerS
sudo nmcli con import type wireguard file ~/Downloads/de-fra.conf
#Imports file into NetworkManager
sudo nmcli con modify "de-fra" connection.id "DE-FRA-WG"
#Renamed connection to Germany Frankfurt UDP (or DE-FRA-UDP)
# udo nmcli con mod DE-FRA-WG needs to add listen port, mtu and fwmark by hand for now.
# Specifies correct parameters to connect to the server, DO NOT MODIFY OR CHANGE. Sorting this out
sudo nmcli con mod DE-FRA-WG ipv4.dns 162.252.172.57,149.154.159.92
#Adds Surfshark DNS to the connection for better stability and to reduce leaks
sudo nmcli con mod DE-FRA-WG ipv6.method disabled
#Disables IPv6, as it can interfere with leaks and connections.
nmcli con show
#Lists all current VPN Profiles and Network Connections