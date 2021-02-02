# iperf test udp 網路效能
使用 iperf 測量網路的效能，這次通過 udp 來進行測試。

## server
在server 端加上 -u  這個選項，並可以指定測試使用的 buffer size ( 使用 window size 的選項) .
```bash
iperf -s -p 9005 -u  -w 2048K

-s    server 模式
-p    指定port
-u    設定為 udp 模式
-w   設定 buffer size , 在 udp 測試的時候，這個選項用來設定 udp buffer size.
        (  這裡設定成 2MB, 預設448 KByte)
```

## Client
client 端設定可以藉由調整測試時使用的 bandwidth 及 len  這兩個選項，得以跑出不同的效果~
```bash
iperf -c server.host.tw  -p 9005 -i 1 -t 300 -u -w 2048K -b 17400M -l 20700

-c      client 模式，並指定 server hostname
-p     指定 port
-i       輸出的時間間隔
-t      測試要跑多久(單位: 秒)
-u     指定 udp 模式
-w    同 server 端， udp buffer size
-b     設定 bandwidth ( 單位: bits/sec) 。
         加大時應注意 packet loss 的情況，packet loss 太大的話，測試就沒什麼意義了。
-l      len 大小設定。如果要針對 packet forward 的能力測試時，可以把它調小
         然後用多台client 同時對上一台 server 做壓力測試。
iperf test udp 網路效能
```