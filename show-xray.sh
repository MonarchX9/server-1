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
expired=$(date -d "${exp}" +"%d %b %Y")
	echo -e "Xray Config"
	echo -e "-----------"
	read -p "User : " user
	if ! grep -qw "$user" /kaizen/xray/xray-clients.txt; then
		echo -e ""
		echo -e "User '$user' does not exist."
		echo -e ""
		exit 0
	fi
	uuid=$(cat /kaizen/xray/xray-clients.txt | grep -w "$user" | awk '{print $2}')
	domain=$(cat /usr/local/etc/xray/domain)
	exp=$(cat /kaizen/xray/xray-clients.txt | grep -w "$user" | awk '{print $3}')
	exp_date=$(date -d "${exp}" +"%d %b %Y")
	cd
	clear
	echo -e ""
	echo -e "Expired : $exp_date"
	echo -e "VLESS + TLS / XTLS"
	echo -e "------------------"
	echo -e "Adress: $domain"
	echo -e "Port: 443"
	echo -e "ID: $uuid"
	echo -e "Flow: xtls-rprx-direct"
	echo -e "Encryption: none"
	echo -e "Network: tcp"
	echo -e "Head Type: none"
	echo -e "TLS: tls / xtls"
	echo -e ""
	echo -e "Link : vless://$uuid@$domain:443?security=xtls&flow=xtls-rprx-direct#vless_xtls_${user}"
	echo -e "QR : https://api.qrserver.com/v1/create-qr-code/?size=400x400&data=vless://$uuid@$domain:443?security=xtls&flow=xtls-rprx-direct#vless_xtls_${user}"
	echo -e ""
