# AUTOSCRIPT KAIZENVPN

## CARA-CARANYA

1. Pertama sekali, sila jalankan script ini terlebih dahulu.

```sh
apt update && apt upgrade -y --fix-missing && update-grub && sleep 2 && reboot
```
2. Kemudian jalankan script ini.
```sh
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen nscd && wget --inet4-only -O setup.sh 'https://raw.githubusercontent.com/Apeachsan91/server/main/setup.sh' && chmod +x setup.sh && screen -S setup ./setup.sh && rm -rf ./setup.sh
```

to check hostname enter this command on your terminal:
```sh
cat /etc/hostname
```

the script will read hostname as your default host/domain, so you need to edit and set hostname on your server. If you done with that, you can run the script by entering this command:
```sh
# link script
https://raw.githubusercontent.com/cybertize/sshvpn/default/install

# run script
chmod +x install && ./install
```

the easyway to run bash script by doing it this way, by entering this command:
```sh
bash install
```

**The script will take sometime to complete, please wait for it...**

## INFO

_What the script will do?_
1. update & upgrade
2. install dependencies
3. install packages

### Packages list:
| No.  | Packages      | Indexs                    |
| ---- | :------------ | ------------------------- |
| 01   | dropbear      | 442(TCP), 443(TLS) |
| 02   | openvpn       | 1194(TCP), 994(UDP), 587(TLS) |
| 03   | squid         | 8080 & 8000 |
| 05   | badvpn-udpwgw | 127.0.0.1 7300 |
| 06   | nginx         | 80(HTTP) & 443(HTTPS) |
| 07   | webmin        | 10000 |
| 08   | fail2ban      | |
| 09   | iptables      | |

### Plugins | Menu
*plugins is a* __menu__ *to make it easier for:*

No.|Name|Details
:--- |---- |---- 
01|trial_user|Jana akaun percubaan untuk sehari
02|create|Buat akaun pengguna untuk sshd & ovpn
03|renew|Tambah tempoh masa aktif akaun pengguna
04|login|Senaraikan pengguna yang log masuk
05|lists|Senaraikan semua akaun pengguna
06|limit|Senaraikan akaun log masuk berganda
07|kick|Tendang pengguna multilogin
08|kill|Hentikan pengguna multilogin
09|unlock|Buka kunci atau dayakan akaun pengguna
10|lock|Kunci atau nyahdayakan akaun pengguna
11|delete|Padamkan akaun pengguna
12|check|Semak perkhidmatan
13|feature|Perincian perkhidmatan
14|ports|Tukar port perkhidmatan
15|restart|Mulakan semula perkhidmatan
16|domain|Tambah domain or/and subdomain
17|backup|Data sandaran
18|restore|Pulihkan data
19|speed|Uji kelajuan pelayan
20|detail|Perincian pelayan
21|reboot|Mulakan semula pelayan

```md
MIT License

Copyright (c) 2021 Doctype

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

