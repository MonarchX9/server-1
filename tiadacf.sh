  
#!/bin/bash
cd
clear
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
