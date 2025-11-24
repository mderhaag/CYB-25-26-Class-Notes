# Nmap Commands

# Overview 
Nmap: Network Mapper
nmap = networkmapper
    - Using to scan on local network
    - Helps us locate devices that we may or may not know about
    - Gives us back useful information such as IP address, MAC addresses, hostnames, and much more
    - Different Levels of scanning (1-5)
    - Goes from quieter to louder
  
# Instalation  
- sudo apt install nmap
  
# Basic Commands
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

# Scans
- Scan excluding an ip
    EX: nmap -sn 192.168.1.* --exclude 192.168.1.250
    - Mainly used if there is an ip address you don't want to find

- Scan for top ports
    - nmap --top-ports <numberofports> <ipaddress>
    - EX: nmap --top-ports 20 192.168.1.250
    
- Scan and put into outputs

- Normal Outputs = nmap -oN <filename> <target(s)>
    - human readable text

- XML Output - nmap -oX <filename> <target(s)>
    - used with parsing reports

- Grepable Output = nmap -oG <filename> <target(s)>
    - used for parsing tools with grep, providing one line per host

- All Formats = nmap -oA <filename><target(s)>
    - creating three files from the results just like -oN, -oX, and -oG

# Os and service detection
- nmap -A <ipaddress>
    - Tends to get paired with different scan speeds using T1-5
    - Ex: nmap -A -T4 192.168.1.1

- Speed ranged from quiet to loud
- T1, T2, T3, T4, T5
- T3 is default speed

# Service Detection
- nmap -sV <ipaddress>
- nmap -sV 192.168.1.1
- only gets us the service versions running on the ports
- faster than trying to get the entire OS


# Scanning via Protocol of TCP and UDP
- TCP = Transmission Control Protocol
    - Connection-oriented 
    - Secure
- UDP = User Datagram Protocol
    - Connectionless
    - Not secure
    - Sending data as fast as it can
 
- nmap -sT -p <ipaddress>
    - EX: nmap -sT -p 1-10000 192.168.1.1

- nmap -sU ip <ipaddress>
    - EX: nmap -sU -p 1-10000 192.168.1.1



