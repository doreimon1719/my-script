#
#!/bin/bash
#Script unblock akaun SSH
#Script by syahz86
#
cd
clear
echo "==================================================================="
echo -e "         UNBLOCK USER MENU |           "
echo "==================================================================="
echo ""
read -p "What username you to unblock: " Nama
passwd -u $Nama
echo ""
#echo "==================================================================="
#echo -e "              SCRIPT BY syahz86 | GollumVPN              "
echo "==================================================================="
echo ""
