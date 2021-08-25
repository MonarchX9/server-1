#!/bin/bash
clear
echo -e ""
echo "Adakah anda mempunyai akaun cloudflare? Anda dikehendaki memasukkan email dan api key cloudflare anda sekiranya ada."
read -p "Sekiranya ada, sila tekan 1. Sekiranya tidak ada sila taip 2 (1/2) " jawab
echo -e ""
case $jawab in
1)
wget https://raw.githubusercontent.com/Apeachsan91/server/main/adacf.sh && chmod +x adacf.sh && ./adacf.sh
;;
2)
wget https://raw.githubusercontent.com/Apeachsan91/server/main/tiadacf.sh && chmod +x tiadacf.sh && ./tiadacf.sh
;;
*)
clear
jawab
;;
esac
