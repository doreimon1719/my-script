#
#!/bin/bash

#
cd
clear

echo ""
#IP=`dig +short myip.opendns.com @resolver1.opendns.com`

Login=trial`</dev/urandom tr -dc X-Z0-9 | fold -w 7 | head -n 1`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | fold -w 3 | head -n 1`

useradd -e `date -d "$ how many days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo "============ Trial User created Successful =============="
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo "==================================================================="
#echo -e "====Trial akaun SSH===="
#echo -e "Host: $IP" 
#echo -e "Port OpenSSH: 22,143"
#echo -e "Port Dropbear: 80,443"
#echo -e "Port Squid: 8080,3128"
#echo -e "Config OpenVPN (TCP 1194): http://$IP:81/client.ovpn"
#echo -e "Username: $Login"
#echo -e "Password: $Pass\n"

#echo ""
