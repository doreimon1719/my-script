#
#!/bin/bash
#Script menambah user ssh
#Script by syahz86
#
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP2="s/xxxxxxxxx/$MYIP/g";
cd
clear
echo "==================================================================="
echo -e "          DAFTAR PELANGGAN | MENU SCRIPT BY syahz86          "
echo "==================================================================="
echo -e ""
read -p "Username : " username
egrep "^$username" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
	echo "Username [$username] Existing!"
	exit 1
else
	read -p "Password [$username] : " password
	read -p "How many day [$username] active: " AKTIF
	today="$(date +"%Y-%m-%d")"
	expire=$(date -d "$AKTIF days" +"%Y-%m-%d")
	useradd -M -N -s /bin/false -e $expire $username
	echo $username:$password | chpasswd
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
	echo "Aktif sehingga: $(date -d "$AKTIF days" +"%d-%m-%Y")"
  echo -e ""
  echo "==================================================================="
  echo -e "              SCRIPT BY syahz86 | GollumVPN              "
  echo "==================================================================="
  echo -e ""
fi
