# check if a server is running by sending a packet
ping 8.8.8.8

# check if a server is running by sending a packet 5 times
ping -c 5 8.8.8.8

# show ARP/neighbor table (who your machine has seen on the local network)
arp -a

# show neighbor table (modern replacement for arp on Linux)
ip neigh

# show all network interfaces + IPs (brief)
ip -br addr

# show link status and MAC addresses
ip -br link

# show routing table (where traffic goes)
ip route

# show policy routing rules (advanced routing)
ip rule

# show DNS resolver config used by systemd-resolved (if present)
resolvectl status

# quick DNS lookup (A/AAAA)
dig example.com +short

# query a specific DNS server
nslookup example.com 1.1.1.1

# trace the DNS resolution path (which servers answer)
dig example.com +trace

# show open TCP/UDP listening sockets
ss -lntu

# show established TCP connections
ss -tn state established

# show processes bound to network ports (sudo)
sudo ss -lntup

# list all ports a given process name is using (Linux)
# (Replace "python" with a process name)
pgrep -a python

# show firewall rules (UFW)
sudo ufw status verbose

# show nftables ruleset (modern Linux firewall)
sudo nft list ruleset

# test TCP connectivity to host:port (no data sent)
nc -vz example.com 443

# simple port scan of a few common ports (lightweight)
for p in 22 80 443; do nc -vz example.com "$p"; done

# show HTTP response headers (good for redirects/caching)
curl -I https://example.com

# time a request (DNS/connect/TTFB breakdown)
curl -o /dev/null -s -w 'dns:%{time_namelookup} connect:%{time_connect} ttfb:%{time_starttransfer} total:%{time_total}\n' https://example.com

# show your public IP (via a simple service)
curl -s https://api.ipify.org; echo

# check local listening port from localhost
curl -v http://127.0.0.1:8080/

# trace route (path packets take)
traceroute -n 8.8.8.8

# MTR (continuous ping + traceroute; great for packet loss)
mtr -rw 8.8.8.8

# show current Wi‑Fi link status (Linux w/ iw)
iw dev

# show Wi‑Fi SSID / signal (NetworkManager)
nmcli -f active,ssid,signal dev wifi

# capture packets on an interface (sudo) — stop with Ctrl+C
# WARNING: may capture sensitive data.
sudo tcpdump -i any -n

# capture only DNS traffic
sudo tcpdump -i any -n port 53

# quick LAN scan for live hosts (requires nmap; adjust subnet)
sudo nmap -sn 192.168.1.0/24

# show listening ports and attached processes
netstat -nlp

# http://explainshell.com/explain?cmd=iptables+-t+nat+-A+PREROUTING+-p+tcp+--dport+80+-j+REDIRECT+--to-port+8080
iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080

# to setup auto login when using ssh, please read the following document
# http://www.rebol.com/docs/ssh-auto-login.html
