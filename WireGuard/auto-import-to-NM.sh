#bash script start


read -p "This is an experimental and work in progress script, before proceeding make sure you have the German WG file downloaded from my.surfshark.com in your downloads folder. If you wish to proceed, press Enter to continue"
# Disclaimer
sudo nmcli con import type wireguard file ~/Downloads/de-fra.conf
# Imports file into NetworkManager
sudo nmcli con modify "de-fra" connection.id "DE-FRA-WG"
# Renamed connection to Germany Frankfurt WireGuard or (DE-FRA-WG)
sudo nmcli con modify "DE-FRA-WG" connection.interface-name wg0
# Changes default adapter to something more uniform, handy when using UFW.
sudo nmcli con modify "DE-FRA-WG" wireguard.mtu 1280
# Changes MTU to acceptable standard for WG.
sudo nmcli con modify "DE-FRA-WG" wireguard.fwmark 0x51820
# Adds fwmark, sort of scuffed as it shows a diff value in NM GUI but it works.
sudo nmcli con modify "DE-FRA-WG" wireguard.listen-port 32
# Adds listen port, do not change.
sudo nmcli con mod DE-FRA-WG ipv4.dns 162.252.172.57,149.154.159.92
# Adds Surfshark DNS to the connection for better stability and to reduce leaks
sudo nmcli con mod DE-FRA-WG ipv6.method disabled
# Disables IPv6, as it can interfere with leaks and connections.
nmcli con show
# Lists all current VPN Profiles and Network ConnectionsS


#bash script end