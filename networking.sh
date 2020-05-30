# check if a server is running by sending a packet
ping 8.8.8.8

# check if a server is running by sending a packet 5 times
ping -c 5 8.8.8.8

# show listening ports and attached processes
netstat -nlp

# http://explainshell.com/explain?cmd=iptables+-t+nat+-A+PREROUTING+-p+tcp+--dport+80+-j+REDIRECT+--to-port+8080
iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080

# to setup auto login when using ssh, please read the following document
# http://www.rebol.com/docs/ssh-auto-login.html
