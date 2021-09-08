#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/Apeachsan91/server/main/ipallow | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
NUMBER_OF_CLIENTS=$(grep -c -E "" "/kaizen/xray/xray-clients.txt")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		echo ""
		echo "You have no existing clients!"
		exit 1
	fi

	clear
	echo ""
	echo " Select the existing client you want to remove"
	echo " Press CTRL+C to return"
	echo " ==============================="
	echo "     No  User   Expired"
	grep -E "^" "/kaizen/xray/xray-clients.txt" | cut -d ' ' -f 2-3 | nl -s ') '
	until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
		if [[ ${CLIENT_NUMBER} == '1' ]]; then
			read -rp "Select one client [1]: " CLIENT_NUMBER
		else
			read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
		fi
	done
user=$(grep -E "^" "/kaizen/xray/xray-clients.txt" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^" "/kaizen/xray/xray-clients.txt" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
	uuid=$(cat /kaizen/xray/xray-clients.txt | grep -w "$user" | awk '{print $2}')
	domain=$(cat /usr/local/etc/xray/domain)
	exp=$(cat /kaizen/xray/xray-clients.txt | grep -w "$user" | awk '{print $3}')
	exp_date=$(date -d"${exp}" "+%d %b %Y")
	echo -e "Expired : $exp_date"
	echo -e "VLESS + TLS / XTLS"
	echo -e "------------------"
	echo -e "Adress: $domain"
	echo -e "Port: 6443"
	echo -e "ID: $uuid"
	echo -e "Flow: xtls-rprx-direct"
	echo -e "Encryption: none"
	echo -e "Network: tcp"
	echo -e "Head Type: none"
	echo -e "TLS: tls / xtls"
	echo -e ""
	echo -e "Link : vless://$uuid@$domain:6443?security=xtls&flow=xtls-rprx-direct#vless_xtls_${user}"
	echo -e "QR : https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=vless://$uuid@$domain:6443?security=xtls&flow=xtls-rprx-direct#vless_xtls_${user}"
	echo -e ""
