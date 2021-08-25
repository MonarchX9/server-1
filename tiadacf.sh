  
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
echo "Sila register certificate untuk domain anda selepas script ini habis di install dengan menjalankan menu bernombor 28. Terima kasih"
echo ""
sleep 5
wget https://raw.githubusercontent.com/Apeachsan91/server/main/afterjawab.sh && chmod +x afterjawab.sh && ./afterjawab.sh
