## Awk Output

- Tools that end up having a messy output
    - ifconfig, ipaddr, ip a, other nmap commands

- So far, awk has only been used for pulling out columns
    - You can put into a function
    - You can set variables
    - You can call out and style out a new page based on your findings

## Basics
    - EX: filename | awk '{print $2}'
    - prints out the second column
    - $1, $2, $3 ... $NF
    - $NF = Number of fields
        - Counts the number of fields and stores it
        - Mainly used for the last line in the field
- substr helps us break up the subtext

## SubStr Syntax

- substr(string, startposition, length)
- substr(ABCDEF, 2, 3) --> BCD
    - Start position is 2 = B
    - Counts out to the length of 3
    - B --> C --> D
- substr(Wholesome, 3, 5) --> oleso
    - Start position 3 = o
    - Counts out length 5 times
    - oleso
- substr(10.10.15.194, 1, 3) --> 10.
    - Start position is at 1=1
    - Counts out three for the length
    - 1 --> 0 --> .
- substr(192.168.1.46, 10, 3) --> .46
    - Start postition is at 10 = .
    - Counts out the length 3
    - . --> 4 --> 6
    - .46

- substr($0, 1, 10) --> print out the first 10 characters of the entire line

