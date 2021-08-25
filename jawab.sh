#!/bin/bash
clear
echo -e ""
echo "
                             _---__
                          _-       /--______
                     __--( /     \ )XXXXXXXXXXX\v.
                   .-XXX(   O   O  )XXXXXXXXXXXXXXX-
                  /XXX(       U     )        XXXXXXX
                /XXXXX(              )--_  XXXXXXXXXXX
               /XXXXX/ (      O     )   XXXXXX   \XXXXX
               XXXXX/   /            XXXXXX   \__ \XXXXX
              XXXXXX__/          XXXXXX         \__---->
      ---___  XXX__/          XXXXXX      \__         /
         \-  --__/   ___/\  XXXXXX            /  ___--/=
          \-\    ___/    XXXXXX              '--- XXXXXX
            \-\/XXX\ XXXXXX                      /XXXXX
               \XXXXXXXXX   \                    /XXXXX/
                \XXXXXX      >                 _/XXXXX/
                  \XXXXX--__/              __-- XXXX/
                   -XXXXXXXX---------------  XXXXXX-
                      \XXXXXXXXXXXXXXXXXXXXXXXXXX/
                       ''VXXXXXXXXXXXXXXXXXXV''"
echo -e ""
echo "========================================================"
echo "*        SELAMAT DATANG KE SISTEM SCRIPT KAIZEN         *"
echo "========================================================"
echo -e ""
echo -e "Sebelum kita bermula, sila jawab soalan berikut."
sleep 1
echo -e ""
echo -e "Adakah anda mempunyai akaun cloudflare? Anda dikehendaki memasukkan email dan api key cloudflare anda sekiranya ada."
echo -e ""
echo -e "Sekiranya ada, sila tekan 1. Sekiranya tidak ada sila taip 2 untuk memasukkan domain sendiri."
echo -e "1. Ya, saya ada akaun cloudflare."
echo -e "2. Tidak, saya tiada akaun cloudflare."
echo -e ""
read -p "Sila berikan jawapan anda (1/2): " jawab
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
./jawab
;;
esac
