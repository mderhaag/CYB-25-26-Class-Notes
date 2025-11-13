# Nmap Commands

# Overview 
Nmap: Network Mapper
nmap = networkmapper
    I. Using to scan on local network
    II. Helps us locate devices that we may or may not know about
    III. Gives us back useful information such as IP address, MAC addresses, hostnames, and much more
    IV. Different Levels of scanning (1-5)
    V. Goes from quieter to louder
  
 ## Instalation  
- sudo apt install nmap
  
 ### Basic Commands
  
- nmap <ipaddress>
    I. nmap 192.168.1.0
    II. nmap scanme.nmap.org
  
- nmap localhost = scans your target machine
    I. Allows you to see what ports you have available on your device
    II. TOTAL ports on a device: 65,535
 
- nmap -p <portnumbers> <ipaddress>
- scans an ip and the ports listed
    I. nmap -p 1-5000 192.168.1.1

- nmap -sL
    I. scans for a list of hosts (may not actually be up)

- nmap -sn
    I. ping scan, does not scan for port openings
    II. like knocking on a door to see if anyone is home

- nmap -sn <ipaddress>/<range>
    I. Scans for and discovers all available hosts on a network based on range
    II. EXL sudo snap -sn 192.168.1.0/24
    III. Grabs back the MAC address, ip addresses, and estimated name of device
    IV. Need to know your IP addresses and the netowrk range for accuracy
