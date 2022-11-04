#!/usr/bin/expect -f

set username "user"
set password "user"
set command "reboot"

spawn telnet "192.168.1.1"
expect "Username:"
send "$username\r"
expect "Password:"
send "$password\r"

send "$command\r"

# Making telnet to close the connection immediately after running the command, was a pain in the ass for me. If you know a better way pls leave a comment.
send "exit\r"
# Sending three shitinputs to force telnet to close the connection lol
expect "Username:"
send "PleaseExit\r"
expect "Password:"
send "WhyThisDoesn'tExit\r"
expect "Username:"
send "PleaseExit\r"
expect "Password:"
send "WhyThisDoesn'tExit\r"
expect "Username:"
send "PleaseExit\r"
expect "Password:"
send "WhyThisDoesn'tExit\r"

# CTRL ] which is \x5d , was supposed to interrupt the login.
#expect "Username:"
#send \x5d
#send "quit\r"

set results $expect_out(buffer)


expect eof

