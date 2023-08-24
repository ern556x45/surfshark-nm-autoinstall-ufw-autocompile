Please download connection files from one of these links.

This is set up to import only five specific servers.

Hong Kong (hk-hkg)
Thailand (th-bkk)
United states - Houston (us-hou)
United Kingdom - Manchester (uk-man)
South Korea (kr-seo)

https://my.shark-china.com/auth/login?restricted=&country=CN&referrer=%2Fvpn%2Fmanual-setup%2Fmain

You can modify the script to fit your needs.

The files should be placed in ~/Downloads/wireguard/

sudo mkdir ~/Downloads/wireguard/

This command can be used to make the folder for you.

Please ensure that the private key is added. You can use the automatic file provided with the script.

Simply add your private key to the script where instructed your-private-key-here, and run the script.

sh ./AutoPubkey,sh

Proceed to Import.sh by running this command.

sh ./Import.sh

This will import the connection profiles for you and set them up, Connect to them by using this command:

sudo nmcli con up server_name

Stay safe online and offline!
S.B.

