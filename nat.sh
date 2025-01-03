iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE

iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 192.168.200.21
#ou
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
