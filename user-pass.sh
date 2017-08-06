#
#!/bin/bash

#
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP2="s/xxxxxxxxx/$MYIP/g";
cd
clear
echo "==================================================================="
echo -e "      CHANGE CUSTOMER PASSWORD      "
echo "==================================================================="
echo -e ""
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

read -p "Entern username: " username

egrep "^$username" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
	read -p "New password for account [$username]: " password
	read -p "Please re-enter the new password for the account [$username]: " password1
	echo ""
	if [[ $password = $password1 ]]; then
		echo $username:$password | chpasswd
		echo "Password for account [$username] Successfully replaced"
		echo ""
		echo "-------------------------------------------------------------------"
		echo "Data Login:"
		echo "-------------------------------------------------------------------"
		echo "Host/IP: $MYIP"
		echo "Dropbear Port: 443, 110, 109"
		echo "OpenSSH Port: 22, 143"
		echo "Squid Proxy: 80, 8080, 3128"
		echo "OpenVPN Config: http://$MYIP:81/client.ovpn"
		echo "Username: $username"
		echo "Password: $password"
		#echo "Valid s/d: $(date -d "$AKTIF days" +"%d-%m-%Y")"
		echo "-------------------------------------------------------------------"
	else
		echo "Password for account [$username] Failed to change"
		echo "[New password] & [Confirm new password] Not the same, please try again!"
	fi
else
	echo "Username [$username] Not yet registered!"
  echo -e ""
echo "==================================================================="
#echo -e "              SCRIPT BY syahz86 | GollumVPN              "
echo "==================================================================="
echo -e ""
	exit 1
fi
