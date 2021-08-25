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
cd /root
CF_ID=${CF_ID}
CF_KEY=${CF_KEY}
read -e -p " Sila masukkan email Cloudflare anda:" CF_ID
read -e -p " Sila masukkan Api Key Cloudflare anda:" CF_KEY
echo -e "CF_ID=${CF_ID}" >> /root/mail1.conf
echo -e "CF_KEY=${CF_KEY}" >> /root/mail2.conf
cd
clear
echo "DONE...!"
echo "Your ID Cloudflare"
echo -e "==============================="
echo "Email          : ${CF_ID}"
echo "Api Key        : ${CF_KEY}"
echo -e "==============================="
echo -e ""
