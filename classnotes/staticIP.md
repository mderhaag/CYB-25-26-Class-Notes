# Connect to wifi
- sudo nmcli dev wifi connect <NAME> password <PASSWORD>

# Needed info
Run:
- route -n
- ifconfig

# Commands
- sudo nmcli con mod <WIFI NAME> ipv4.addresses <NEW IP>/24
- sudo nmcli con mod <WIFI NAME> ipv4.gateway <IP FROM "route -n">
- sudo nmcli con mod <WIFI NAME> ipv4.dns <IP FROM "route -n">
- sudo nmcli con mod <WIFI NAME> ipv4.method manual

# Confirm
- sudo nmcli con up


