# libinput-gestures 
增强Touchpad板功能
使用的工具是 libinput-gestures，按照 Github 上的說明安裝即可。

## Install
Following : https://github.com/bulletmark/libinput-gestures

## My Setting
``s`
# libinput-gestures -l
 libinput-gestures -l
libinput-gestures: session pantheon+x11 on Linux-4.15.0-47-generic-x86_64-with-elementary-5.0-juno, python 3.6.7, libinput 1.10.4
/usr/bin/libinput-gestures: hash 22c5b1ff726b44d6d9bec968a03c3901
Gestures configured in ~/.config/libinput-gestures.conf:
swipe up         3 xdotool key ctrl+alt+Up
swipe up         4 xdotool key super+a
swipe down       3 xdotool key ctrl+Home
swipe down       4 xdotool key super+space
swipe left       3 xdotool key alt+Left
swipe right      3 xdotool key alt+Right
swipe left       4 _internal ws_up
swipe right      4 _internal ws_down
swipe right_down 3 xdotool key control+w
pinch out        2 xdotool key control+shift+plus
pinch in         2 xdotool key control+minus
libinput-gestures: device /dev/input/event7: ETPS/2 Elantech Touchpad

```