#
#!/bin/bash
#Script create akaun trial
#Script by syahz86
#
cd
clear
#echo "==================================================================="
#echo -e "          TRIAL USER MENU | MENU SCRIPT BY syahz86           "
#echo "==================================================================="
echo ""
IP=`dig +short myip.opendns.com @resolver1.opendns.com`

Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c2`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c3`

useradd -e `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
#echo -e "====Trial akaun SSH===="
#echo -e "Host: $IP" 
#echo -e "Port OpenSSH: 22,143"
#echo -e "Port Dropbear: 80,443"
#echo -e "Port Squid: 8080,3128"
#echo -e "Config OpenVPN (TCP 1194): http://$IP:81/client.ovpn"
#echo -e "Username: $Login"
#echo -e "Password: $Pass\n"
#echo "==================================================================="
#echo -e "              SCRIPT BY syahz86 | GollumVPN              "
#echo "==================================================================="
#echo ""
