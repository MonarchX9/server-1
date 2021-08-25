#!/bin/bash
clear
echo -e ""
echo "=========================================="
echo "* SELAMAT DATANG KE SISTEM SCRIPT KAIZEN *"
echo "=========================================="
echo -e ""
echo "Sebelum kita bermula, sila jawab soalan berikut."
sleep 2
echo -e ""
echo "Adakah anda mempunyai akaun cloudflare? Anda dikehendaki memasukkan email dan api key cloudflare anda sekiranya ada."
echo -e ""
read -p "Sekiranya ada, sila tekan 1. Sekiranya tidak ada sila taip 2 untuk memasukkan domain sendiri (1/2) " jawab
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
