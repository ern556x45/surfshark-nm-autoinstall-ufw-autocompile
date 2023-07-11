#bash script start.


read -p "This is an experimental and work in progress script, before proceeding make sure you have the German TCP file downloaded from my.surfshark.com in your downloads folder. If you wish to proceed, press Enter to continue"
#Disclaimer
sudo nmcli connection import type openvpn file ~/Downloads/de-fra.prod.surfshark.comsurfshark_openvpn_tcp.ovpn
#Imports file into NetworkManager
sudo nmcli connection modify "de-fra.prod.surfshark.comsurfshark_openvpn_udp" connection.id "DE-FRA-TCP"
#Renamed connection to Germany Frankfurt UDP (or DE-FRA-UDP)
sudo nmcli con mod DE-FRA-TCP ipv4.dns 162.252.172.57,149.154.159.92
#Adds Surfshark DNS to the connection for better stability and to reduce leaks
sudo nmcli con mod DE-FRA-TCP ipv6.method disabled
#Disables IPv6, as it can interfere with leaks and connections.
nmcli con show
#Lists all current VPN Profiles and Network Connections


#bash script end.