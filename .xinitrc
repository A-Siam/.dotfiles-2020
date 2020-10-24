xbindkeys &
nm-applet &
blueman-applet &
udiskie -t &
batterymon -t 'gnome' -n 15&
numlockx &
setxkbmap -layout us,ar && setxkbmap -option 'grp:win_space_toggle'&
clipmenud &
xrdb ~/.Xresources

# for enabling gnome-keyring 
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

picom &
xset r rate 300 70&
xsetroot -cursor_name left_ptr
# my touchpad preference
xinput --set-prop 10 'libinput Accel Speed' 0.5&
exec bspwm

