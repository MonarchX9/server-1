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

uuid="$(cat /kaizen/xray/xray-clients.txt | grep -w "$user" | awk '{print $2}')"
cat /usr/local/etc/xray/config.json | jq 'del(.inbounds[0].settings.clients[] | select(.id == "'${uuid}'"))' > /usr/local/etc/xray/config_tmp.json
mv -f /usr/local/etc/xray/config_tmp.json /usr/local/etc/xray/config.json
cat /usr/local/etc/xray/config.json | jq 'del(.inbounds[1].settings.clients[] | select(.id == "'${uuid}'"))' > /usr/local/etc/xray/config_tmp.json
mv -f /usr/local/etc/xray/config_tmp.json /usr/local/etc/xray/config.json
sed -i "/\b$user\b/d" /kaizen/xray/xray-clients.txt
service xray restart
clear
echo -e ""
echo " ================================"
echo " Akaun Xray Vless berjaya dipadam"
echo " ================================"
echo -e ""
