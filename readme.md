Hello.

These are three scripts to autoadd a Surfshark configuration for our Germany Frankfurt server for three of the main connection methods.

This is mainly optimized for Arch based systems. I use Manjaro so I base this off Manjaro.

Instructions are included alongside each installer.

WireGuard - Autoimport, UFW
OpenVPN UDP - Autoimport, UFW
OpenVPN TCP - Autoimport, UFW
IKEv2 - (Plausible to make the process easier), Working on UFW.

This will utilize NM to connect to the VPN, please note that you will need to add your connection credentials, public keys manually.

It also has an autocompile script for the Uncomplicated Firewall featuring a setup that will automatically block ports for you and work as a prevention to make sure the connection does not drop leaking your real IP and lcoation.

As always, contact me here or on Slack @Ernestas Petkevicius (Blonde fella with glasses as opposed to the devops fella) if you spot anything that can be done better.