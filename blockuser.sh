#
#!/bin/bash
#Script block akaun SSH
#Script by syahz86
#
cd
clear
echo "==================================================================="
echo -e "           BLOCK USER MENU | MENU SCRIPT BY syahz86          "
echo "==================================================================="
echo ""
echo "-------------------------------"
echo "USERNAME         EXPIRE DATE   "
echo "-------------------------------"
while read expired
do
        AKUN="$(echo $expired | cut -d: -f1)"
        ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
        exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
        if [[ $ID -ge 1000 ]]; then
        printf "%-17s %2s\n" "$AKUN" "$exp"
        fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo "-------------------------------"
echo "Total account: $JUMLAH user"
echo "-------------------------------"

read -p "Client account to be Banned: " Nama
passwd -l $Nama
echo ""
echo "==================================================================="
echo -e "              SCRIPT BY syahz86 | GollumVPN              "
echo "==================================================================="
echo ""
