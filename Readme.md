# Readme
Here are my elementary OS some configurations.

## Elementary OS must install
- https://linoxide.com/distros/
- things-after-fresh-installation-elementary-5-juno/
- https://averagelinuxuser.com/after-install-elementary-juno/

### Some apps to installl
```bash
sudo apt install vlc
sudo apt-get install unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip
sudo apt-get install libreoffice
sudo apt-get install chromium-browser firefox
sudo apt install openssh-server
sudo apt install gimp
sudo apt install audacity
```

## Check your card and set profile
pactl list cards short
pacmd set-card-profile <index> <profile>

#### Change Bluetooth profile to A2DP
pacmd set-card-profile bluez_card.28_11_A5_45_6F_35 a2dp_sink

## Apps configuration
### libinput-gestures 
增强Touchpad板功能
使用的工具是 libinput-gestures，按照 Github 上的說明安裝即可。

#### Install
Following : https://github.com/bulletmark/libinput-gestures

##### Install lib
```bash
sudo gpasswd -a $USER input
sudo apt-get install xdotool wmctrl
sudo apt-get install libinput-tools
```
##### Install this software:
```bash
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install (or sudo ./libinput-gestures-setup install)
```

##### CONFIGURATION and run
```
libinput-gestures-setup autostart
libinput-gestures-setup start
```

##### Replace my setting
```
cp libinput-gestures.conf /etc/libinput-gestures.conf
libinput-gestures-setup stop
libinput-gestures-setup start
```

##### My Setting
```
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

### Terminal alternative
#### How can I change the default Terminal app?
You can set the default terminal by changing the alternative for x-terminal-emulator. Installing gnome-terminal creates an alternative symlink so all you have to do is set it.

`sudo update-alternatives --set x-terminal-emulator /usr/bin/gnome-terminal.wrapper`
Edit: It seems like the shortcut implementation is not using the alternative, but rather a gsettings configuration. It's still a good idea to set the alternative symlink above, however, to use the keyboard shortcut some gsettings properties will need to be modified. Use dconf-editor (sudo apt-get install dconf-editor) or gsettings to change the default terminal application to gnome-terminal. You will need to modify the exec and exec-arg properties in the org.gnome.desktop.default-applications.terminal schema.
```bash
gsettings set org.gnome.desktop.default-applications.terminal exec gnome-terminal
gsettings set org.gnome.desktop.default-applications.terminal exec-arg ''
```
