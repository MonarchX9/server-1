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
  
  NUMBER_OF_CLIENTS=$(grep -c -E "^" "/etc/v2ray/vless.json")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		clear
		echo ""
		echo "You have no existing clients!"
		exit 1
	fi

	clear
	echo ""
	echo "Select the existing client you want to renew"
	echo " Press CTRL+C to return"
	echo -e "==============================="
	grep -E "^" "/kaizen/xray/xray-clients.txt" | cut -d ' ' -f 2-3 | nl -s ') '
	until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
		if [[ ${CLIENT_NUMBER} == '1' ]]; then
			read -rp "Select one client [1]: " CLIENT_NUMBER
		else
			read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
		fi
	done
  
	read -p "Duration (day) : " extend
  user=$(grep -E "^" "/kaizen/xray/xray-clients.txt" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
  exp=$(grep -E "^" "/kaizen/xray/xray-clients.txt" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
	uuid=$(cat /kaizen/xray/xray-clients.txt | grep -w $user | awk '{print $2}')
	exp_old=$(cat /kaizen/xray/xray-clients.txt | grep -w $user | awk '{print $3}')
	diff=$((($(date -d "${exp_old}" +%s)-$(date +%s))/(86400)))
	duration=$(expr $diff + $extend + 1)
	exp_new=$(date -d +${duration}days +%Y-%m-%d)
	exp=$(date -d "${exp_new}" +"%d %b %Y")

	sed -i "/\b$user\b/d" /kaizen/xray/xray-clients.txt
	echo -e "$user\t$exp_new" >> /kaizen/xray/xray-clients.txt

	clear
	echo -e "Xray User Information"
	echo -e "---------------------"
	echo -e "Username : $user"
	echo -e "Expired date : $exp"
	echo -e ""
