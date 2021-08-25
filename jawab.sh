#!/bin/bash
clear
echo -e ""
echo "Adakah anda mempunyai akaun cloudflare? Anda dikehendaki memasukkan email dan api key cloudflare anda sekiranya ada."
read -p "Sekiranya ada, sila tekan 1. Sekiranya tidak ada sila taip 2 (1/2) " jawab
echo -e ""
case $jawab in
1)
adacf
;;
2)
tiadacf
;;
*)
clear
jawab
;;
esac
