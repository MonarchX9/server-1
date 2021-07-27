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
read -p "Sila masukkan Domain anda :" domain
#read -p "Sila masukkan SubDomain anda :" sub
domain=$domain
#sub=$sub
#SUB_DOMAIN=${sub}.$domain
#echo -e "SUB_DOMAIN=${sub}.${domain}" >> /root/mail.conf
echo -e "domain=$domain" >> /root/mail.conf
set -euo pipefail
IP=$(wget -qO- icanhazip.com);
#echo "Host : $SUB_DOMAIN"
echo "Host : $domain"
#echo $SUB_DOMAIN > /root/domain
echo $domain > /root/domain
rm -f /root/cf.sh
