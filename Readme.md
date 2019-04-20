# libinput-gestures 
增强Touchpad板功能
使用的工具是 libinput-gestures，按照 Github 上的說明安裝即可。

## Install
Following : https://github.com/bulletmark/libinput-gestures

## My Setting
``s`
# libinput-gestures -l
libinput-gestures -l
libinput-gestures: session lightdm-xsession+x11 on Linux-4.9.0-8-amd64-x86_64-with-debian-9.8, python 3.5.3, libinput 1.6.3

/usr/bin/libinput-gestures: hash 4cc3250c5befc6926c04b3e499114677
Gestures configured in ~/.config/libinput-gestures.conf:
swipe up         3 xdotool key ctrl+Home
swipe up         4 xdotool key ctrl+alt+Down
swipe down       3 xdotool key ctrl+alt+Up
swipe down       4 xdotool key Ctrl+alt+Up
swipe left       3 xdotool key alt+Left
swipe right      3 xdotool key alt+Right
swipe left       4 _internal ws_up
swipe right      4 _internal ws_down
swipe right_down 3 xdotool key control+w
pinch out        2 xdotool key control+shift+plus
pinch in         2 xdotool key control+minus
libinput-gestures: device /dev/input/event2: ETPS/2 Elantech Touchpad

```