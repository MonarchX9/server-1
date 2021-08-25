#!/bin/bash

#install ssh ovpn
wget https://raw.githubusercontent.com/Apeachsan91/server/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh

#install sstp
wget https://raw.githubusercontent.com/Apeachsan91/server/main/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh

#install ssr
wget https://raw.githubusercontent.com/Apeachsan91/server/main/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget https://raw.githubusercontent.com/Apeachsan91/server/main/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh

#installwg
wget https://raw.githubusercontent.com/Apeachsan91/server/main/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh

#install v2ray
wget https://raw.githubusercontent.com/Apeachsan91/server/main/ins-vt.sh && chmod +x ins-vt.sh && screen -S v2ray ./ins-vt.sh

#install L2TP
wget https://raw.githubusercontent.com/Apeachsan91/server/main/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
wget https://raw.githubusercontent.com/Apeachsan91/server/main/set-br.sh && chmod +x set-br.sh && ./set-br.sh

#install ohp
wget https://raw.githubusercontent.com/Apeachsan91/server/main/ohp.sh && chmod +x ohp.sh && ./ohp.sh

#install websocket
https://raw.githubusercontent.com/Apeachsan91/server/main/websocket.sh

rm -f /root/jawab
rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/ipsec.sh
rm -f /root/set-br.sh
rm -f /root/ohp.sh
rm -f /root/websocket.sh

cat <<EOF> /etc/systemd/system/autosett.service
[Unit]
Description=autosetting
Documentation=https://vpnstores.net

[Service]
Type=oneshot
ExecStart=/bin/bash /etc/set.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable autosett
wget -O /etc/set.sh "https://github.com/Apeachsan91/server/raw/main/set.sh"
chmod +x /etc/set.sh
history -c
echo "1.2" > /home/ver
clear
echo " "
echo "Installation has been completed!!"
echo " "
echo "=================================-Autoscript Premium-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "   ---------------" | tee -a log-install.txt
echo "   Service & Port"  | tee -a log-install.txt
echo "   ---------------" | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP $ovpn, UDP $ovpn2, SSL 442"  | tee -a log-install.txt
echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt
echo "   - Stunnel4                : 443, 777"  | tee -a log-install.txt
echo "   - OpenSSH + WebSocket     : 2085"  | tee -a log-install.txt
echo "   - OpenVPN + WebSocket     : 2086"  | tee -a log-install.txt
echo "   - Dropbear + WebSocket    : 2087"  | tee -a log-install.txt
echo "   - OpenVPN + OHP Squid     : 50000"  | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3543"  | tee -a log-install.txt
echo "   - V2RAY Vmess TLS         : 8443"  | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS    : 80"  | tee -a log-install.txt
echo "   - V2RAY Vless TLS         : 2083"  | tee -a log-install.txt
echo "   - V2RAY Vless None TLS    : 8880"  | tee -a log-install.txt
echo "   - Trojan                  : 2087"  | tee -a log-install.txt
#echo "   - L2TP/IPSEC VPN          : 1701"  | tee -a log-install.txt
#echo "   - PPTP VPN                : 1732"  | tee -a log-install.txt
#echo "   - SSTP VPN                : 444"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   -----------------------------------" | tee -a log-install.txt
echo "   Server Information & Other Features" | tee -a log-install.txt
echo "   -----------------------------------" | tee -a log-install.txt
echo "   - Timezone                : Asia/Kuala_Lumpur (GMT +8)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 5.00 GMT +8" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   ----------------" | tee -a log-install.txt
echo "   Script Developer"  | tee -a log-install.txt
echo "   ----------------" | tee -a log-install.txt
echo "   - Dev/Main                : KaizenVPN"  | tee -a log-install.txt
echo "   - Telegram                : t.me/KaizenA"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "============================-Script Created by KaizenVPN-=======================" | tee -a log-install.txt
echo ""
echo " Reboot in 5 Sec"
sleep 5
rm -f setup.sh
reboot
