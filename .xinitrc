if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xbindkeys &
nm-applet &
udiskie -t &
# xcompmgr -c -l0 -t0 -r0 -o.00 &
picom &
wmname LG3D &
hsetroot -solid '#303030'
xrdb $HOME/.Xresources
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
batterymon -t 'gnome' -n 15&
setxkbmap -layout us,ar && setxkbmap -option 'grp:win_space_toggle'
numlockx &
blueman-applet &
clipmenud &
xscreensaver --no-splash&
xsetroot -cursor_name left_ptr
dunst&
thunar --daemon&
# exec bspwm
# exec openbox-session
# exec spectrwm
exec awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr

