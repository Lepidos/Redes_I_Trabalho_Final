
iptables -t nat -A POSTROUTING -s 192.168.200.0/24 -j MASQUERADE

iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 192.168.200.21

iptables -t nat -A PREROUTING -p tcp --dport 21 -j DNAT --to-destination 192.168.200.21
