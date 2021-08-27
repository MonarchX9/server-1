# AUTOSCRIPT KAIZENVPN

## CARA-CARANYA

1. Pertama sekali, sila jalankan script ini terlebih dahulu.

```sh
apt update && apt upgrade -y --fix-missing && update-grub && sleep 2 && reboot
```
**Selepas install, server akan reboot. Tunggu sehingga server selesai reboot**

2. Kemudian jalankan script ini.
```sh
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen nscd && wget --inet4-only -O setup.sh 'https://raw.githubusercontent.com/Apeachsan91/server/main/setup.sh' && chmod +x setup.sh && screen -S setup ./setup.sh && rm -rf ./setup.sh
```

**Selepas install, server akan reboot. Tunggu sehingga server selesai reboot**

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

Copyright (c) 2021 KaizenVPN

