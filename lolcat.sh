echo "1.2" > /home/ver
clear
IP=$(wget -qO- icanhazip.com);
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
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
echo "   - OpenVPN Download TCP    : TCP $ovpn http://$IP:81/client-tcp-$ovpn.ovpn"  | tee -a log-install.txt
echo "   - OpenVPN Download UDP    : UDP $ovpn2 http://$IP:81/client-udp-$ovpn2.ovpn"  | tee -a log-install.txt
echo "   - OpenVPN Download SSL    : SSL 442 http://$IP:81/client-tcp-ssl.ovpn"  | tee -a log-install.txt
echo "   - Stunnel4                : 443, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt
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
echo "   - Autoreboot On 12.00 GMT +8" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo "   ----------------" | tee -a log-install.txt
echo "   Script Developer"  | tee -a log-install.txt
echo "   ----------------" | tee -a log-install.txt
echo "   - Dev/Main                : DatoVPN"  | tee -a log-install.txt
echo "   - Telegram                : t.me/DatoVPN"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "============================-Script Created by DatoVPN-=======================" | tee -a log-install.txt
echo ""
echo " Reboot in 5 Sec"
sleep 5
rm -f lolcat.sh
