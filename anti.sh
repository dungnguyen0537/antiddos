#!/bin/sh
connect1=$(netstat -tun | grep ESTABLISHED | wc -l)
connect2=$(netstat -alntp | grep :443 | wc -l)

if [ $connect1 -gt 100 ] || [ $connect2 -gt 100 ]; then
  cat /root/status.txt | grep "allow" && bash <(curl -Ls https://raw.githubusercontent.com/dungnguyen0537/antiddos/main/block-on.sh) && bash <(curl -Ls https://raw.githubusercontent.com/dungnguyen0537/antiddos/main/captcha-on.sh) && echo "block" > /root/status.txt && clear && echo -e "ANTI DDOS ON"
else
  cat /root/status.txt | grep "block" && bash <(curl -Ls https://raw.githubusercontent.com/dungnguyen0537/antiddos/main/block-off.sh) && bash <(curl -Ls https://raw.githubusercontent.com/dungnguyen0537/antiddos/main/captcha-off.sh) && echo "allow" > /root/status.txt && clear && echo -e "ANTI DDOS OFF"
fi
