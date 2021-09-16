#!/bin/bash
color1='\e[031;1m'
color2='\e[32;1m'
color3='\e[0m'
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
echo -e ""
echo -e "=====================[ ${color1}AUTOSCRIPT KAIZENVPN${color3} ]==================="
echo -e ""
echo -e "============================[ ${color2}MENU${color3} ]============================"
echo -e "  ${color2}menu${color3}         : Senarai Menu"
echo -e ""
echo -e "========================[ ${color2}SSH & OPENVPN${color3} ]======================="
echo -e " [${color1}1${color3}]     : Membuat akaun SSH & OpenVPN"
echo -e " [${color1}2${color3}]     : Membuat akaun percubaan SSH & OpenVPN"
echo -e " [${color1}3${color3}]     : Mengganti password akaun SSH & OpenVPN"
echo -e " [${color1}4${color3}]     : Senarai akaun SSH & OpenVPN"
echo -e " [${color1}5${color3}]     : Senarai login akaun SSH & OpenVPN"
echo -e " [${color1}6${color3}]     : Menambah masa aktif akaun SSH & OpenVPN Account"
echo -e " [${color1}7${color3}]     : Memadam akaun SSH & OpenVPN Account"
echo -e " [${color1}8${color3}]     : Memadam akaun SSH & OpenVPN yang sudah tamat tempoh"
echo -e " [${color1}9${color3}]     : Setup Autokill SSH"
echo -e " [${color1}10${color3}]    : Menunjukkan akaun yang melakukan Multi Login"
echo -e " [${color1}11${color3}]    : Restart servis Dropbear, Squid3, OpenVPN dan SSH"
echo -e ""
echo -e "==========================[ ${color2}WIREGUARD${color3} ]========================="
echo -e " [${color1}12${color3}]    : Membuat akaun Wireguard"
echo -e " [${color1}13${color3}]    : Memadam akaun Wireguard"
echo -e " [${color1}14${color3}]    : Menambah masa aktif akaun Wireguard"
echo -e " [${color1}15${color3}]    : Senarai login akaun Wireguard"
echo -e " [${color1}16${color3}]    : Cek Wireguard User Interface"
echo -e ""
echo -e "============================[ ${color2}SSR${color3} ]============================="
echo -e " [${color1}17${color3}]    : Membuat akaun SSR"
echo -e " [${color1}18${color3}]    : Memadam akaun SSR"
echo -e " [${color1}19${color3}]    : Menambah masa aktif akaun SSR"
echo -e " [${color1}20${color3}]    : Menu SSR yang lain"
echo -e ""
echo -e "=======================[ ${color2}SHADOWSOCKS OBFS${color3} ]====================="
echo -e " [${color1}21${color3}]    : Membuat akaun Shadowsocks"
echo -e " [${color1}22${color3}]    : Memadam akaun Shadowsocks"
echo -e " [${color1}23${color3}]    : Menambah masa aktif akaun Shadowsocks"
echo -e " [${color1}24${color3}]    : Senarai login akaun Shadowsocks"
echo -e ""
echo -e "=========================[ ${color2}Vray VMESS${color3} ]========================="
echo -e " [${color1}25${color3}]    : Membuat akaun V2ray Vmess"
echo -e " [${color1}26${color3}]    : Memadam akaun V2ray Vmess"
echo -e " [${color1}27${color3}]    : Menambah masa aktif akaun V2ray Vmess"
echo -e " [${color1}28${color3}]    : Senarai login akaun V2ray Vmess"
echo -e " [${color1}29${color3}]    : Renew Certificate akaun V2RAY"
echo -e ""
echo -e "=========================[ ${color2}V2ray VLESS${color3} ]========================"
echo -e " [${color1}30${color3}]    : Membuat akaun V2ray Vless"
echo -e " [${color1}31${color3}]    : Memadam akaun V2ray Vless"
echo -e " [${color1}32${color3}]    : Menambah masa aktif akaun V2ray Vless"
echo -e " [${color1}33${color3}]    : Senarai login akaun V2ray Vless"
echo -e ""
echo -e "==========================[ ${color2}Xray Vless${color3} ]========================"
echo -e " [${color1}34${color3}]    : Membuat akaun Xray Vless"
echo -e " [${color1}35${color3}]    : Memadam akaun Xray Vless"
echo -e " [${color1}36${color3}]    : Senarai akaun Xray Vless"
echo -e " [${color1}37${color3}]    : Menambah masa aktif akaun Xray Vless"
echo -e " [${color1}38${color3}]    : Senarai login akaun Vless"
echo -e " [${color1}39${color3}]    : Maklumat akaun Xray Vless"
echo -e ""
echo -e "============================[ ${color2}TROJAN${color3} ]=========================="
echo -e " [${color1}40${color3}]    : Membuat akaun Trojan"
echo -e " [${color1}41${color3}]    : Memadam akaun Trojan"
echo -e " [${color1}42${color3}]    : Menambah masa aktif akaun Trojan"
echo -e " [${color1}43${color3}]    : Senarai login akaun Trojan"
echo -e ""
echo -e "===========================[ ${color2}SUBDOMAIN${color3} ]========================"
echo -e " [${color1}44${color3}]    : Menambah domain untuk vps anda"
echo -e " [${color1}45${color3}]    : Menambah ID Cloudflare"
echo -e " [${color1}46${color3}]    : Membuat domain dan subdomain pointing ke Cloudflare"
echo -e ""
echo -e "========================[ ${color2}BACKUP & RESTORE${color3} ]===================="
echo -e " [${color1}47${color3}]    : Backup file using Email"
echo -e " [${color1}48${color3}]    : Backup file using Nginx"
echo -e " [${color1}49${color3}]    : Autobackup using Email"
echo -e " [${color1}50${color3}]    : Autobackup using Nginx"
echo -e " [${color1}51${color3}]    : Restore Backup"
echo -e ""
echo -e "============================[ ${color2}SISTEM${color3} ]=========================="
echo -e " [${color1}52${color3}]    : Menukar port servis"
echo -e " [${color1}53${color3}]    : Webmin Menu"
echo -e " [${color1}54${color3}]    : Limit Bandwith Speed Server"
echo -e " [${color1}55${color3}]    : Jumlah penggunaan Ram VPS"
echo -e " [${color1}56${color3}]    : Reboot VPS"
echo -e " [${color1}57${color3}]    : Speedtest VPS"
echo -e " [${color1}58${color3}]    : Displaying System Information"
echo -e " [${color1}59${color3}]    : Info Script Auto Install"
echo -e " [${color1}60${color3}]    : Update Script"
echo -e " [${color1}61${color3}]    : Exit From VPS"
echo -e ""
echo -e "================================================================"
echo -e ""
read -p "Sila pilih bermula dari [ 1 - 61 ] : " menu
echo -e ""
case $menu in
1)
usernew
;;
2)
trial
;;
3)
user-passwd
;;
4)
member
;;
5)
cek
;;
6)
renew
;;
7)
deluser
;;
8)
delete
;;
9)
autokill
;;
10)
ceklim
;;
11)
restart
;;
12)
add-wg
;;
13)
del-wg
;;
14)
renew-wg
;;
15)
cek-wg
;;
16)
wg show
;;
17)
add-ssr
;;
18)
del-ssr
;;
19)
renew-ssr
;;
20)
ssr
;;
21)
add-ss
;;
22)
del-ss
;;
23)
renew-ss
;;
24)
cek-ss
;;
25)
add-ws
;;
26)
del-ws
;;
27)
renew-ws
;;
28)
cek-ws
;;
29)
certv2ray
;;
30)
add-vless
;;
31)
del-vless
;;
32)
renew-vless
;;
33)
cek-vless
;;
34)
add-xray
;;
35)
del-xray
;;
36)
list-xray
;;
37)
renew-xray
;;
38)
cek-xray
;;
39)
show-xray
;;
40)
add-tr
;;
41)
del-tr
;;
42)
renew-tr
;;
43)
cek-tr
;;
44)
add-dom
;;
45)
add-cff
;;
46)
add-cfh
;;
47)
backupemail
;;
48)
backupnginx
;;
49)
autobackupemail
;;
50)
autobackupnginx
;;
51)
restore
;;
52)
change-port
;;
53)
wbmn
;;
54)
limit-speed
;;
55)
ram
;;
56)
reboot
;;
57)
speedtest
;;
58)
info
;;
59)
about
;;
60)
update
;;
61)
exit
cd
clear
;;
*)
clear
menu
;;
esac
