  
#!/bin/bash
echo ""
echo "==============================="
echo "  ANDA TIADA AKAUN CLOUDFLARE  "
echo "==============================="
echo ""
read -p "Sila masukkan Domain anda :" domain
domain=$domain
echo -e "$domain" >> /root/mail.conf
echo $domain > /root/domain
echo "DONE...!"
echo "Your new Domain is : ${domain}"
echo ""
sleep 2
wget https://raw.githubusercontent.com/Apeachsan91/server/main/afterjawab.sh && chmod +x afterjawab.sh && ./afterjawab.sh
