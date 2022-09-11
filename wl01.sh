#!/bin/bash
# Script Auto Install Five M
#=====================================================================================
# Author:   Clashplayer#8772 
#=====================================================================================
#=====================================================================================
# Root Force
# By Clashplayer#8772

IPTABLES="/sbin/iptables"

cat << "EOF"

EOF

    printf "Authenticating to aAPI \\n"

apt upgrade 
apt update
apt install ipset

ipset -N france hash:net
ipset -N canada hash:net
ipset -N belgique hash:net
ipset -N colombia hash:net
ipset -N maroc hash:net
ipset -N algerie hash:net
ipset -N tunisie hash:net
ipset -N luxembourg hash:net
ipset -N suisse hash:net
ipset -N reunion hash:net
ipset -N liban hash:net
ipset -N chine hash:net
ipset -N whitelist-asn hash:net
ipset -N blacklist-asn hash:net
ipset -N romania hash:net
ipset -N russian hash:net

mkdir /home/datacontries/
cd /home/datacontries/
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/fr.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/ru.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/ca.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/be.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/ma.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/dz.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/tn.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/lu.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/ch.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/co.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/ro.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/re.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/lb.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/ru.zone
wget -P . --no-check-certificate https://www.ipdeny.com/ipblocks/data/countries/cn.zone

for i in $(cat ca.zone ); do ipset -A canada $i; done
for i in $(cat co.zone ); do ipset -A colombia $i; done
for i in $(cat be.zone ); do ipset -A belgique $i; done
for i in $(cat ma.zone ); do ipset -A maroc $i; done
for i in $(cat be.zone ); do ipset -A algerie $i; done
for i in $(cat lu.zone ); do ipset -A tunisie $i; done
for i in $(cat lu.zone ); do ipset -A luxembourg $i; done
for i in $(cat ch.zone ); do ipset -A suisse $i; done
for i in $(cat re.zone ); do ipset -A reunion $i; done
for i in $(cat be.zone ); do ipset -A romania  $i; done
for i in $(cat lb.zone ); do ipset -A liban $i; done
for i in $(cat cn.zone ); do ipset -A chine $i; done
for i in $(cat asn-whitelist.zone ); do ipset -A whitelist-asn $i; done
for i in $(cat asn-blacklist.zone ); do ipset -A blacklist-asn $i; done
for i in $(cat ru.zone ); do ipset -A russian $i; done

$IPTABLES -A INPUT -p tcp -m set --match-set russian src -j DROP
$IPTABLES -A INPUT -p tcp -m set --match-set romania src -j DROP
$IPTABLES -A INPUT -p tcp -m set --match-set colombia src -j DROP
$IPTABLES -A INPUT -p tcp -m set --match-set france src -j ACCEPT
$IPTABLES -A INPUT -p tcp -m set --match-set belgique src -j ACCEPT
$IPTABLES -A INPUT -p tcp -m set --match-set maroc src -j ACCEPT
$IPTABLES -A INPUT -p tcp -m set --match-set algerie src -j ACCEPT
$IPTABLES -A INPUT -p tcp -m set --match-set tunisie src -j DROP
$IPTABLES -A INPUT -p tcp -m set --match-set luxembourg src -j ACCEPT
$IPTABLES -A INPUT -p tcp -m set --match-set suisse src -j ACCEPT
$IPTABLES -A INPUT -p tcp -m set --match-set reunion src -j ACCEPT
$IPTABLES -A INPUT -p tcp -m set --match-set canada src -j ACCEPT
$IPTABLES -A INPUT -p tcp -m set --match-set liban src -j DROP
$IPTABLES -A INPUT -p tcp -m set --match-set chine src -j DROP


###############   FiveM  ###############
$IPTABLES -A OUTPUT -p tcp --destination-port 30121 -j DROP


$IPTABLES -A INPUT -p udp -m udp --dport 30121 -m set --match-set whitelist-asn src -j ACCEPT



$IPTABLES -A INPUT -s 65.21.109.87 -j ACCEPT # Mysql TEXHEBERG

$IPTABLES -A INPUT -s 162.252.214.56 -j ACCEPT # Panel TEXHEBERG
$IPTABLES -A INPUT -s 104.22.46.177 -j ACCEPT # Liste Five M
$IPTABLES -A INPUT -s 104.22.47.177 -j ACCEPT # Liste Five M
$IPTABLES -A INPUT -s 104.23.98.190 -j ACCEPT # Liste Five M
$IPTABLES -A INPUT -s 51.91.21.55 -j ACCEPT # Liste Five M
$IPTABLES -A INPUT -s 51.91.21.135 -j ACCEPT # Liste Five M
$IPTABLES -A INPUT -s 172.67.38.114 -j ACCEPT # Servers Ingress Five M
$IPTABLES -A INPUT -s 51.91.21.135 -j ACCEPT # Serveur d'authentification des cl�s Nucleus
$IPTABLES -A INPUT -s 51.91.22.57 -j ACCEPT # Serveur d'authentification des cl�s Nucleus
$IPTABLES -A INPUT -s 51.91.21.58 -j ACCEPT # Serveur d'authentification des cl�s Nucleus
$IPTABLES -A INPUT -s 51.91.22.235 -j ACCEPT # Serveur d'authentification des cl�s Nucleus
$IPTABLES -A INPUT -s 207.180.192.35 -j ACCEPT # Serveur Chocohax
$IPTABLES -A INPUT -s 51.68.33.155 -j ACCEPT # Serveur WaveShield
$IPTABLES -A INPUT -s 23.39.88.159 -j ACCEPT # API Steam
$IPTABLES -A INPUT -s 149.28.239.174 -j ACCEPT # IP Country

# On autorise les connexions deja établies | Traffic local
$IPTABLES -A INPUT -i eth0 -m state --state ESTABLISHED,RELATED -j ACCEPT
$IPTABLES -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
$IPTABLES -I INPUT 2 -i lo -j ACCEPT
$IPTABLES -I INPUT 3 -i tun0 -j ACCEPT

# On DROP tout les paquets malformer ou les paquets Nul
$IPTABLES -A INPUT -p tcp --tcp-flags ALL NONE -j DROP

# On force la v�rification des paquets de type SYN 
$IPTABLES -A INPUT -p tcp ! --syn -m state --state NEW -j DROP

# On DROP tout les paquets de type XMAS
$IPTABLES -A INPUT -p tcp --tcp-flags ALL ALL -j DROP


# Spoofing
$IPTABLES -t mangle -A PREROUTING -s 169.254.0.0/16 -j DROP
$IPTABLES -t mangle -A PREROUTING -s 172.16.0.0/12 -j DROP
$IPTABLES -t mangle -A PREROUTING -s 192.0.2.0/24 -j DROP
$IPTABLES -t mangle -A PREROUTING -s 192.168.0.0/16 -j DROP
$IPTABLES -t mangle -A PREROUTING -s 10.0.0.0/8 -j DROP
$IPTABLES -t mangle -A PREROUTING -s 0.0.0.0/8 -j DROP
$IPTABLES -t mangle -A PREROUTING -s 240.0.0.0/5 -j DROP
$IPTABLES -t mangle -A PREROUTING -s 127.0.0.0/8 ! -i lo -j DROP
$IPTABLES -N FIVEM-SYN
$IPTABLES -A INPUT -p tcp --syn -j FIVEM-SYN
$IPTABLES -A FIVEM-SYN -m limit --limit 2/s --limit-burst 6 -j RETURN
$IPTABLES -A FIVEM-SYN -j DROP

# Protection contre les attaques de type SYN Flood par SYN Proxy
$IPTABLES -N SYN-LIMIT
$IPTABLES -A SYN-LIMIT -m hashlimit --hashlimit 10/second --hashlimit-burst 10 --hashlimit-mode srcip,dstport --hashlimit-name SYN-LIMIT -j ACCEPT
$IPTABLES -A SYN-LIMIT -m limit --limit 3/min -j LOG --log-prefix "[FIREWALL] SYN-LIMIT : " --log-level warning
$IPTABLES -A SYN-LIMIT -j DROP

$IPTABLES -t raw -A PREROUTING -p tcp -m tcp --syn -j CT --notrack
$IPTABLES -A INPUT -p tcp -m tcp -m conntrack --ctstate INVALID,UNTRACKED -j SYNPROXY --sack-perm --timestamp --wscale 7 --mss 1460
$IPTABLES -A INPUT -m conntrack --ctstate INVALID -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN FIN,SYN -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags SYN,RST SYN,RST -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags SYN,FIN SYN,FIN -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags FIN,RST FIN,RST -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags FIN,ACK FIN -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags ACK,URG URG -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags ACK,FIN FIN -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags ACK,PSH PSH -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags ALL ALL -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags ALL NONE -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags ALL FIN,PSH,URG -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,FIN,PSH,URG -j DROP
$IPTABLES -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,RST,ACK,FIN,URG -j DROP
$IPTABLES -t mangle -A PREROUTING -m conntrack --ctstate INVALID -j DROP





 exit 0
