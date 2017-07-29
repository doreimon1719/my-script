#
#!/bin/bash
#Maklumat Script
#Script by syahz86
#

export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP2="s/xxxxxxxxx/$MYIP/g";
clear
echo "==================================================================="
echo -e "           MAKLUMAT SCRIPT | MENU SCRIPT BY syahz86          "
echo "==================================================================="
echo ""
echo -e "Untuk sistem Debian 7 32 bit & 64 bit sahaja"
echo ""
echo -e "Script ini mengandungi :"
echo -e "1) OpenVPN | TCP 1194 (client config : http://$MYIP:81/client.ovpn)" 
echo -e "2) OpenSSH | Port 22,143" 
echo -e "3) Dropbear | Port 80,443" 
echo -e "4) Squid3 | Port 8080,3128" 
echo -e "5) Badvpn | Badvpn-udpgw port 7300" 
echo -e "6) Webmin | http://$MYIP:10000/" 
echo -e "7) Vnstat | http://$MYIP/vnstat/"
echo -e "7) MRTG | http://$MYIP/mrtg/" 
echo -e "8) Fail2ban [on]"
echo -e "9) Anti DDoS [on]"
echo ""
echo "==================================================================="
echo -e "             ORIGINAL SCRIPT BY syahz86 | GollumVPN              "
echo "==================================================================="
echo ""
