#
#!/bin/bash

#
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP2="s/xxxxxxxxx/$MYIP/g";
cd
clear
echo ""
echo ""
# begin of user-list
echo "-------------------------------------------------------------------"
echo "USERNAME              EXP DATE     "
echo "-------------------------------------------------------------------"
while read expired
do
	AKUN="$(echo $expired | cut -d: -f1)"
	ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
	exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
	if [[ $ID -ge 1000 ]]; then
		printf "%-21s %2s\n" "$AKUN" "$exp"
	fi
done < /etc/passwd
echo "-------------------------------------------------------------------"
echo ""
# end of user-list

read -p "Enter username you to renew : " username

egrep "^$username" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
	#read -p "Isikan password akun [$username]: " password
	read -p "How many days [$username] active: " AKTIF
	
	expiredate=$(chage -l $username | grep "Account expires" | awk -F": " '{print $2}')
	today=$(date -d "$expiredate" +"%Y-%m-%d")
	expire=$(date -d "$today + $AKTIF days" +"%Y-%m-%d")
	chage -E "$expire" $username
	passwd -u $username
	#useradd -M -N -s /bin/false -e $expire $username
	echo ""
	echo "-------------------------------------------------------------------"
	echo "Data Login:"
	echo "-------------------------------------------------------------------"
	##echo "Host/IP: $MYIP"
	##echo "Dropbear Port: 443, 110, 109"
	##echo "OpenSSH Port: 22, 143"
	##echo "Squid Proxy: 80, 8080, 3128"
	##echo "OpenVPN Config: http://$MYIP:81/client.ovpn"
	##echo "Username: $username"
	echo "Password: $password"
	echo "Account active up to: $(date -d "$today + $AKTIF days" +"%d-%m-%Y")"
	echo "-------------------------------------------------------------------"
else
	echo "Username [$username] not yet registered!"
echo -e ""

echo -e ""
	exit 1

fi
