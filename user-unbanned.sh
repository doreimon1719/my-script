#
#!/bin/bash

#
cd
clear
echo "==================================================================="
echo -e "     UNBAN THE CUSTOMER ACCOUNTS                               "
echo "==================================================================="
echo ""
echo "" > /root/banneduser.txt
read -p "Enter the username you want to unblock: " username

egrep "^$username" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
	echo ""
	read -p "Do you really want to open the account restrictions [$username] [y/n]: " -e -i y BANNED
	if [[ "$BANNED" = 'y' ]]; then
		echo " Account : $username" >> /root/unbanneduser.txt
		passwd -u $username
		echo ""
		echo "account [$username] successfully opened its block!"
	else
		echo ""
		echo "Opening of account restrictions [$username] Canceled!"
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
