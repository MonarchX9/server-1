#!/bin/bash
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
read -p "Sila masukkan Domain anda :" domain
read -p "Sila masukkan SubDomain anda :" sub
domain=$domain
sub=$sub
echo -e "SUB_DOMAIN=${sub}.${domain}" >> /root/mail.conf
SUB_DOMAIN=${sub}.${domain}
CF_ID=${CF_ID}
CF_KEY=${CF_KEY}
set -euo pipefail
IP=$(wget -qO- icanhazip.com);
echo "Updating DNS for ${SUB_DOMAIN}..."

ZONE=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones?name=${domain}&status=active" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

RECORD=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?name=${SUB_DOMAIN}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

if [[ "${#RECORD}" -le 10 ]]; then
     RECORD=$(curl -sLX POST "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","ttl":120,"proxied":false}' | jq -r .result.id)
fi

RESULT=$(curl -sLX PUT "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records/${RECORD}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","ttl":120,"proxied":false}')
echo "DONE...!"
echo "Your new Domain is : ${domain}"
echo "Your new SubDomain is : ${SUB_DOMAIN}"
echo $SUB_DOMAIN > /root/domain
sleep 2
wget https://raw.githubusercontent.com/Apeachsan91/server/main/afterjawab.sh && chmod +x afterjawab.sh && ./afterjawab.sh
