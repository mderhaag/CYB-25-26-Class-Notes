# Hydra

## Overview
- Hydra is just a general password-cracking tool
- Using either a password wordlist or using passwords supplied by the user
    - EX: Given a simple user and a password list that has 500,000
- Most documented tools, but also has its limitations
    - Can be tweaked depending on speed, amount of connections, rate-limiting, etc...

## Installation
- sudo apt install hydra
- Should instal the latest version

## Usage case
- Most common is a single user and then using a password list
- But can be used for multiple people and multiple passwords

## Syntax
- One user, one password
    - Most simple
        - hydra -l <username> -p <password> <targetip> <service>
        - EX: hydra -l pi -p raspberry 192.168.1.86 ssh
    - Good for testing, but not the best format

- One username, one password list
    - Most common when testing
    - hydra -l <username> -P <path/to/wordlist> <targetip> <service>
    - hydra -l pi -P home/USER/Document/wordlist.txt 192.168.1.86 ssh
- Usually have a mix of password lists, some long some short depending on
 - More powerful computer = more password lists to brute force through

- Passing in Multiple Users and Multiple Passwords
    - hydra -L <username list> -P <password list> <targetip> <service>
    - hydra -L users.txt -P passwords.txt 192.168.1.86 ssh

## Other options
- -t <number of threads> = Change  number of threads (faster brute force)
- -o <textfile> = Saves output to a file
- -v = Verbose, showing every attempt

## Defenses against Brute Force
- Change port
    - Can be countered if you find the port, for example port 2222
    - hydra -l <username> -P <wordlist> <targetip> -s <port> <service>
        - hydra -l pi -P wordlist.txt 192.168.1.86 -s 2222 ssh

- Turn off password authentication
    - But should already have your key on the machine you want to control

- Use a long, complex password
    - Best case for someone not tech savvy

- Rate limit SSH-attempts (number of times you can connect in a time period)
- Enabling Fail2Ban:


