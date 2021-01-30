if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


xbindkeys &
nm-applet &
blueman-applet &
udiskie -t &
batterymon -t 'gnome' -n 15&
numlockx &
setxkbmap -layout us,ar && setxkbmap -option 'grp:win_space_toggle'&
clipmenud &

picom &
xsetroot -cursor_name left_ptr
# my touchpad preference
xinput --set-prop 10 'libinput Accel Speed' 0.7&
xrdb $HOME/.Xresources &
hsetroot -solid "#000000" # for setting th wallpaper to black
dunst &
lxqt-policykit-agent &

#dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)

exec bspwm
# exec openbox
