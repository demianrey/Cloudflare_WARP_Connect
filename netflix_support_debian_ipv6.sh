#!/bin/sh
echo 正在安装wireguard. . .
cp -f /etc/resolv.conf /etc/resolv.conf.backup
apt install dnsutils resolvconf -y
cp -f /etc/resolv.conf.backup /etc/resolv.conf && rm -rf /etc/resolv.conf.backup
apt-get install wireguard -y
apt-get install -y wireguard-tools --no-install-recommends
wget https://github.com/ViRb3/wgcf/releases/download/v2.2.8/wgcf_2.2.8_linux_amd64 -O /etc/wireguard/wgcf_2.2.8_linux_amd64
cd /etc/wireguard && chmod +x wgcf_2.2.8_linux_amd64
echo 正在注册WARP账号. . .
echo yes | ./wgcf_2.2.8_linux_amd64 register
./wgcf_2.2.8_linux_amd64 generate
cat /etc/wireguard/wgcf-profile.conf | grep -v "engage.cloudflareclient.com" | grep -v "/128" | grep -v "::/0" > /etc/wireguard/wgcf.conf
echo Endpoint = [2606:4700:d0::a29f:c001]:2408 >> /etc/wireguard/wgcf.conf
systemctl enable wg-quick@wgcf
systemctl start wg-quick@wgcf
echo 运行成功，请修改xray/v2ray配置文件！
exit 0
