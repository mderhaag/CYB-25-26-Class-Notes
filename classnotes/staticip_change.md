# Look for <SSID name>
- sudo nmcli dev wifi rescan
    I. OR sudo nmcli dev wifi list

## Connect to network
- sudo nmcli dev wifi connect "<SSID name>" --ask
- Password: <password>
- *should connect successfully*

### Confirm
- Check IP: hostname -I
- Check connected SSID: iwgetid

**travel routers are listed under ".8" not ".1" like usual**

#### Change IP
BEFORE, RUN:
- ping <IP address>
    IF: "Host Unreachable" = can take
- route -n (to find other IP)

- sudo nmcli con mod <SSID name> ipv4.addresses <IP address>/24
- sudo nmcli con mod <SSID name> ipv4.gateway ("route -n" GATEWAY IP) <IP address>
- sudo nmcli con mod <SSID name> ipc4.dns <IP address>,8.8.8.8
- sudo nmcli con up <SSID name>

- hostname -I
