1. Sila jalankan script ini terlebih dahulu.
apt update && apt upgrade -y --fix-missing && update-grub && sleep 2 && reboot

2. Kemudian jalankan script yang ini.
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen nscd && wget --inet4-only -O setup.sh 'https://raw.githubusercontent.com/Apeachsan91/server/main/setup.sh' && chmod +x setup.sh && screen -S setup ./setup.sh && rm -rf ./setup.sh
