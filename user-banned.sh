#
#!/bin/bash

#
cd
clear
echo "==================================================================="
echo -e "        SECURE CUSTOMER ACCOUNTS        "
echo "==================================================================="
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

read -p "Enter the username you want to block: " username

egrep "^$username" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
	echo ""
	read -p "Do you really want to block an account [$username] [y/n]: " -e -i y BANNED
	if [[ "$BANNED" = 'y' ]]; then
		echo " Account : $username" >> /root/banneduser.txt
		passwd -l $username
		echo ""
		echo "Account [$username] Successfully blocked!"
	else
		echo ""
		echo "Account restrictions [$username] Canceled!"
	fi
else
	echo "Username [$username] Not yet registered!"
	echo -e ""
echo "==================================================================="

echo "==================================================================="
echo -e ""

	exit 1
fi
