#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
clear
# BOT INFORMATION
date=$(date -R | cut -d " " -f -5)
export CHATID="6389176425"
export KEY="6230907878:AAExag4j8lRsJbMdAIv6T9STI1g6kp_Vq68"
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
IP=$(wget -qO- ipinfo.io/ip);
domain=$(cat /etc/xray/domain)
date=$(date +"%Y-%m-%d")
apt install wget -y
apt install curl -y
apt install ruby -y
gem install lolcat -y
# // Exporting Language to UTF-8
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
BIRed='\033[1;91m'
red='\e[1;31m'
bo='\e[1m'
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
purple() { echo -e "\\033[35;1m${*}\\033[0m"; }
tyblue() { echo -e "\\033[36;1m${*}\\033[0m"; }
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
# // Export Banner Status Information
export EROR="[${RED} ERROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"
# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"
clear
localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi
mkdir -p /etc/xray
echo -e "${tyblue} Welcome To FunnyVPN AutoScript......${NC} "
sleep 2
echo -e "[ ${green}INFO${NC} ] Preparing the install file"
apt install git curl -y >/dev/null 2>&1
echo -e "[ ${green}INFO${NC} ] installation file is ready"
sleep 2
sleep 3
# // cek old script
if [[ -r /etc/xray/domain ]]; then
clear
echo -e "${INFO} Having Script Detected !"
echo -e "${INFO} If You Replacing Script, All Client Data On This VPS Will Be Cleanup !"
read -p "Are You Sure Wanna Replace Script ? (Y/N) " josdong
if [[ $josdong == "Y" ]]; then
clear
echo -e "${INFO} Starting Replacing Script !"
elif [[ $josdong == "y" ]]; then
clear
echo -e "${INFO} Starting Replacing Script !"
rm -rf /var/lib/scrz-prem 
elif [[ $josdong == "N" ]]; then
echo -e "${INFO} Action Canceled !"
exit 1
elif [[ $josdong == "n" ]]; then
echo -e "${INFO} Action Canceled !"
exit 1
else
echo -e "${EROR} Your Input Is Wrong !"
exit 1
fi
clear
fi
echo -e "${GREEN}Starting Installation............${NC}"
# // Go To Root Directory
cd /root/
# // Remove
apt-get remove --purge nginx* -y
apt-get remove --purge nginx-common* -y
apt-get remove --purge nginx-full* -y
apt-get remove --purge dropbear* -y
apt-get remove --purge stunnel4* -y
apt-get remove --purge apache2* -y
apt-get remove --purge ufw* -y
apt-get remove --purge firewalld* -y
apt-get remove --purge exim4* -y
apt autoremove -y

# // Update
apt update -y

# // Install Requirement Tools
apt-get --reinstall --fix-missing install -y sudo dpkg psmisc socat jq ruby wondershaper python2 tmux nmap bzip2 gzip coreutils wget screen rsyslog iftop htop net-tools zip unzip wget vim net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential gcc g++ automake make autoconf perl m4 dos2unix dropbear libreadline-dev zlib1g-dev libssl-dev dirmngr libxml-parser-perl neofetch git lsof iptables iptables-persistent
apt-get --reinstall --fix-missing install -y libreadline-dev zlib1g-dev libssl-dev python2 screen curl jq bzip2 gzip coreutils rsyslog iftop htop zip unzip net-tools sed gnupg gnupg1 bc sudo apt-transport-https build-essential dirmngr libxml-parser-perl neofetch screenfetch git lsof openssl easy-rsa fail2ban tmux vnstat dropbear libsqlite3-dev socat cron bash-completion ntpdate xz-utils sudo apt-transport-https gnupg2 gnupg1 dnsutils lsb-release chrony
gem install lolcat

# // Update & Upgrade
apt update -y
apt upgrade -y
apt dist-upgrade -y

# // Clear
clear
# // Reading Your Input
read -p "Input Your Name : " nama
read -p "Input Your Domain : " domain
read -p "Input Your NSdomain  : " nsdomain
# // Folder Sistem Yang Tidak Boleh Di Hapus
mkdir -p /usr/bin
mkdir -p /etc/nginx
mkdir -p /usr/bin/xray
mkdir -p /etc/xray
mkdir -p /usr/local/etc/xray

# // Input Domain TO VPS
echo "$domain" > /etc/xray/domain
echo "$nama" > /root/.nama
echo $nsdomain >/etc/xray/dns
echo $nsdomain >/root/nsdomain
echo $nsdomain >/etc/xray/nsdomain
echo $nsdomain >/etc/slowdns/nsdomain
#SETUP ALL INFORMATION
curl ipinfo.io/org > /root/.isp
curl ipinfo.io/city > /root/.city
curl ipinfo.io/org > /root/.myisp
curl ipinfo.io/city > /root/.mycity
curl ifconfig.me > /root/.ip
curl ipinfo.io/region > /root/.region
curl ifconfig.me > /root/.myip
clear
# // Making Certificate
clear
echo -e "[ ${GREEN}INFO${NC} ] Starting renew cert... " 
sleep 2
echo -e "${OKEY} Starting Generating Certificate"
rm -fr /root/.acme.sh
mkdir -p /root/.acme.sh
curl https://acme-install.netlify.app/acme.sh -o /root/.acme.sh/acme.sh
chmod +x /root/.acme.sh/acme.sh
/root/.acme.sh/acme.sh --upgrade
/root/.acme.sh/acme.sh --upgrade --auto-upgrade
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
# // Success
echo -e "┌─────────────────────────────────────────┐"
echo -e " \E[41;1;39m          >>> Install SSH / WS <<<        \E[0m$NC"
echo -e "└─────────────────────────────────────────┘"
sleep 1
wget -q https://raw.githubusercontent.com/Rerechan02/sl/main/tools/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
wget https://raw.githubusercontent.com/Rerechan02/UDP/main/udp.sh && chmod +x udp.sh && ./udp.sh
#SLOWDNS
apt update -y
apt install -y python3 python3-dnslib net-tools
apt install ncurses-utils -y
apt install dnsutils -y
apt install golang -y
apt install git -y
apt install curl -y
apt install wget -y
apt install ncurses-utils -y
apt install screen -y
apt install cron -y
apt install iptables -y
apt install -y git screen whois dropbear wget
apt install -y pwgen python php jq curl
apt install -y sudo gnutls-bin
apt install -y mlocate dh-make libaudit-dev build-essential
apt install -y dos2unix debconf-utils
service cron reload
apt install python ruby -y
gem install lolcat
service cron restart
#sl-fix
cd /usr/bin
wget -O sl-fix "https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/sslh-fix/sl-fix"
chmod +x sl-fix
sl-fix
cd
sed -i 's/#AllowTcpForwarding yes/AllowTcpForwarding yes/g' /etc/ssh/sshd_config
sed -i 's/Port 22/#Port 22/g' /etc/ssh/sshd_config
echo "Port 2222" >> /etc/ssh/sshd_config
echo "Port 22" >> /etc/ssh/sshd_config
rm -rf /etc/slowdns
mkdir -m 777 /etc/slowdns
wget -q -O /etc/slowdns/server.key "https://raw.githubusercontent.com/fisabiliyusri/SLDNS/main/slowdns/server.key"
wget -q -O /etc/slowdns/server.pub "https://raw.githubusercontent.com/fisabiliyusri/SLDNS/main/slowdns/server.pub"
wget -q -O /etc/slowdns/sldns-server "https://raw.githubusercontent.com/fisabiliyusri/SLDNS/main/slowdns/sldns-server"
wget -q -O /etc/slowdns/sldns-client "https://raw.githubusercontent.com/fisabiliyusri/SLDNS/main/slowdns/sldns-client"
cd
chmod +x /etc/slowdns/server.key
chmod +x /etc/slowdns/server.pub
chmod +x /etc/slowdns/sldns-server
chmod +x /etc/slowdns/sldns-client
cd
#install client-sldns.service
cat > /etc/systemd/system/client-sldns.service << END
[Unit]
Description=Client SlowDNS By FunnyVPN
Documentation=https://nekopoi.care
After=network.target nss-lookup.target
[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/etc/slowdns/sldns-client -udp 8.8.8.8:53 --pubkey-file /etc/slowdns/server.pub $nsdomain 127.0.0.1:3369
Restart=on-failure
[Install]
WantedBy=multi-user.target
END
cd
#install server-sldns.service
cat > /etc/systemd/system/server-sldns.service << END
[Unit]
Description=Server SlowDNS By FunnyVPN
Documentation=https://nekopoi.care
After=network.target nss-lookup.target
[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/etc/slowdns/sldns-server -udp :5300 -privkey-file /etc/slowdns/server.key $nsdomain 127.0.0.1:2222
Restart=on-failure
[Install]
WantedBy=multi-user.target
END
cd
chmod +x /etc/systemd/system/client-sldns.service
chmod +x /etc/systemd/system/server-sldns.service
pkill sldns-server
pkill sldns-client
systemctl daemon-reload
systemctl stop client-sldns
systemctl stop server-sldns
systemctl enable client-sldns
systemctl enable server-sldns
systemctl start client-sldns
systemctl start server-sldns
systemctl restart client-sldns
systemctl restart server-sldns
cd
#END
#mkdir folder
mkdir /etc/xray
mkdir /etc/funny
mkdir /etc/funny/limit
mkdir /etc/funny/limit/trojan
mkdir /etc/funny/limit/vless
mkdir /etc/funny/limit/vmess
mkdir /etc/funny/limit/ssh
mkdir /etc/funny/limit/ssh/ip
mkdir /etc/funny/limit/trojan/ip
mkdir /etc/funny/limit/trojan/quota
mkdir /etc/funny/limit/vless/ip
mkdir /etc/funny/limit/vless/quota
mkdir /etc/funny/limit/vmess/ip
mkdir /etc/funny/limit/vmess/quota
mkdir /etc/funny/trojan
mkdir /etc/funny/vless
mkdir /etc/funny/vmess
mkdir /etc/funny/log
mkdir /etc/funny/log/trojan
mkdir /etc/funny/log/vless
mkdir /etc/funny/log/vmess
mkdir /etc/funny/log/ssh
mkdir /etc/funny/cache
mkdir /etc/funny/cache/trojan-tcp
mkdir /etc/funny/cache/trojan-ws
mkdir /etc/funny/cache/trojan-grpc
mkdir /etc/funny/cache/vless-ws
mkdir /etc/funny/cache/vless-grpc
mkdir /etc/funny/cache/vmess-ws
mkdir /etc/funny/cache/vmess-grpc
mkdir /etc/funny/cache/vmess-ws-orbit
mkdir /etc/funny/cache/vmess-ws-orbit1

#install ins-xray
echo -e "┌─────────────────────────────────────────┐"
echo -e " \E[41;1;39m            >>> Install Xray <<<         \E[0m$NC"
echo -e "└─────────────────────────────────────────┘"
sleep 1 
wget -q https://raw.githubusercontent.com/Rerechan02/sl/main/tools/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
# // Download Data
echo -e "${GREEN}Download Data${NC}"
cd /usr/sbin
wget -q -O usernew "https://raw.githubusercontent.com/Rerechan02/sl/main/usernew.sh"
wget -q -O add-ws "https://raw.githubusercontent.com/Rerechan02/sl/main/add-ws.sh"
wget -q -O add-ssws "https://raw.githubusercontent.com/Rerechan02/sl/main/add-ssws.sh"
wget -q -O add-vless "https://raw.githubusercontent.com/Rerechan02/sl/main/add-vless.sh"
wget -q -O add-tr "https://raw.githubusercontent.com/Rerechan02/sl/main/add-tr.sh"
wget -q -O restart "https://raw.githubusercontent.com/Rerechan02/sl/main/options/restart.sh"
wget -q -O tendang "https://raw.githubusercontent.com/Rerechan02/sl/main/options/tendang.sh"
wget -q -O speedtest "https://raw.githubusercontent.com/Rerechan02/sl/main/tools/speedtest_cli.py"
wget -q -O menu-vless "https://raw.githubusercontent.com/Rerechan02/sl/main/menu/menu-vless.sh"
wget -q -O menu-vmess "https://raw.githubusercontent.com/Rerechan02/sl/main/menu/menu-vmess.sh"
wget -q -O menu-trojan "https://raw.githubusercontent.com/Rerechan02/sl/main/menu/menu-trojan.sh"
wget -q -O menu-ssh "https://raw.githubusercontent.com/Rerechan02/sl/main/menu/menu-ssh.sh"
wget -q -O funny "https://raw.githubusercontent.com/Rerechan02/sl/main/menu/menu.sh"
wget -q -O menu "https://raw.githubusercontent.com/Rerechan02/sl/main/menu/menu.sh"
wget -q -O xp "https://raw.githubusercontent.com/Rerechan02/sl/main/xp.sh"
wget -q -O addhost "https://raw.githubusercontent.com/Rerechan02/sl/main/menu/addhost.sh"
wget -q -O certxray "https://raw.githubusercontent.com/Rerechan02/sl/main/menu/crt.sh"
wget -q -O menu-set "https://raw.githubusercontent.com/Rerechan02/sl/main/menu/menu-set.sh"
wget https://raw.githubusercontent.com/Rerechan02/fn/main/mesinssh
wget https://raw.githubusercontent.com/Rerechan02/fn/main/cek-ssh
chmod +x *
chmod +x /usr/sbin/*
cd /usr/bin
wget https://raw.githubusercontent.com/Rerechan02/fn/main/loop
wget https://raw.githubusercontent.com/Rerechan02/fn/main/matikan
wget https://raw.githubusercontent.com/Rerechan02/fn/main/limit
wget https://raw.githubusercontent.com/Rerechan02/fn/main/limit-ip-ssh
wget https://raw.githubusercontent.com/Rerechan02/fn/main/limit-ip-trojan
wget https://raw.githubusercontent.com/Rerechan02/fn/main/limit-ip-vless
wget https://raw.githubusercontent.com/Rerechan02/fn/main/limit-ip-vmess
wget https://raw.githubusercontent.com/Rerechan02/fn/main/limit-quota-trojan
wget https://raw.githubusercontent.com/Rerechan02/fn/main/limit-quota-vmess
wget https://raw.githubusercontent.com/Rerechan02/fn/main/limit-quota-vless
wget https://raw.githubusercontent.com/Rerechan02/fn/main/quota
wget https://raw.githubusercontent.com/Rerechan02/fn/main/quota-trojan-grpc
wget https://raw.githubusercontent.com/Rerechan02/fn/main/quota-trojan-tcp
wget https://raw.githubusercontent.com/Rerechan02/fn/main/quota-trojan-ws
wget https://raw.githubusercontent.com/Rerechan02/fn/main/quota-vmess-grpc
wget https://raw.githubusercontent.com/Rerechan02/fn/main/quota-vmess-ws
wget https://raw.githubusercontent.com/Rerechan02/fn/main/quota-vless-ws
wget https://raw.githubusercontent.com/Rerechan02/fn/main/quota-vless-grpc
wget https://raw.githubusercontent.com/Rerechan02/fn/main/quota-vmess-ws-orbit
wget https://raw.githubusercontent.com/Rerechan02/fn/main/quota-vmess-ws-orbit1
chmod +x /usr/bin/*
cd 
#cat > /etc/cron.d/re_otm <<-END
#SHELL=/bin/sh
#PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
#0 7 * * * root /sbin/reboot
#END

cat > /etc/cron.d/xp_otm <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
2 0 * * * root /usr/bin/xp
END

cat > /etc/cron.d/cl_otm <<-END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
2 1 * * * root /usr/bin/clearlog
END

cat > /home/re_otm <<-END
7
END

service cron restart >/dev/null 2>&1
service cron reload >/dev/null 2>&1

clear
cat> /root/.profile << END
# ~/.profile: executed by Bourne-compatible login shells.
if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi
mesg n || true
clear
menu
END
chmod 644 /root/.profile
curl -sS ifconfig.me > /etc/myipvps
rm -fr /root/ssh-vpn.sh
rm -fr /root/ins-xray.sh
rm -fr /root/install.sh
systemctl daemon-reload
systemctl enable client
systemctl enable nginx
systemctl enable quota
systemctl enable ws-stunnel
systemctl enable stunnel5
systemctl enable xray
systemctl enable udp-custom
systemctl start client
systemctl start nginx
systemctl start quota
systemctl start ws-stunnel
systemctl start stunnel5
systemctl start xray
systemctl start udp-custom
rm -fr /root/*
cat > /root/system << END
END
history -c
ip_vps=$(curl ifconfig.me)
clear
echo -e "
"
TEXT="
Detail Install Script
==================================
IP VPS: $ip_vps
Domain: $(cat /etc/xray/domain)
Waktu Install: $date
Client Name: $nama
==================================
"
clear
curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
echo ""
clear
echo -e "
Detail Install Script
==================================
IP VPS        : $ip_vps
Domain        : $(cat /etc/xray/domain)
Date & Time   : $date
Client Name   : $nama
==================================
"
read -n 1 -s -r -p "Press any key to reboot"
reboot
