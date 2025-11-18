# Nmap Commands

# Overview 
Nmap: Network Mapper
nmap = networkmapper
    - Using to scan on local network
    - Helps us locate devices that we may or may not know about
    - Gives us back useful information such as IP address, MAC addresses, hostnames, and much more
    - Different Levels of scanning (1-5)
    - Goes from quieter to louder
  
 ## Instalation  
- sudo apt install nmap
  
 ### Basic Commands
  
- nmap <ipaddress>
    - nmap 192.168.1.0
    - nmap scanme.nmap.org
  
- nmap localhost = scans your target machine
    - Allows you to see what ports you have available on your device
    - TOTAL ports on a device: 65,535
 
- nmap -p <portnumbers> <ipaddress>
- scans an ip and the ports listed
    - nmap -p 1-5000 192.168.1.1
    - nmap -p 192.168.1.251    

- nmap -sL
    - scans for a list of hosts (may not actually be up)

- nmap -sn
    - ping scan, does not scan for port openings
    - like knocking on a door to see if anyone is home

- nmap -sn <ipaddress>/<range>
    - Scans for and discovers all available hosts on a network based on range
    - EXL sudo snap -sn 192.168.1.0/24
    - Grabs back the MAC address, ip addresses, and estimated name of device
    - Need to know your IP addresses and the network range for accuracy
    - Can also nmap -sn X.X.X*
        EX: nmap -sn 192.168.1.*

- Scan excluding an ip
    EX: nmap -sn 192.168.1.* --exclude 192.168.1.250
    - Mainly used if there is an ip address you don't want to find

- Scan for top ports
    - nmap --top-ports <numberofports> <ipaddress>
    - EX: nmap --top-ports 20 192.168.1.250

