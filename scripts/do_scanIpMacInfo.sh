#!/bin/bash

echo "# Ping 區域網路中所有的 IP 位址"
for ip in 192.168.1.{1..254}; do
  # 刪除舊的 arp 記錄
  #sudo arp -d $ip > /dev/null 2>&1
  sudo arp -d $ip > /dev/null 2>&1
  # 藉由 ping 取得新的 arp 資訊"
  ping -c 5 $ip > /dev/null 2>&1 &
done

echo "# 等待所有背景的 Ping 結束"
wait

echo "# 輸出 ARP table"
arp -n | grep -v incomplete
