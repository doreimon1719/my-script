#
#!/bin/bash
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
echo "==================================================================="
echo -e "              You sucesfully unlock user : $Nama
echo "==================================================================="
echo ""
echo -e ""
