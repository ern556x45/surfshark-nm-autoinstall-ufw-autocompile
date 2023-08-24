sudo sed -i '6s"^.*$"PrivateKey = your-private-key-here"' ~/Downloads/wireguard/*.conf
#Will add your private key to the configuration files in the folder.
#NOTE REPLACE ONLY THE your-private-key-here part!!!