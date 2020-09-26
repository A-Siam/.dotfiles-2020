xbindkeys &
nm-applet &
blueman-applet &
udiskie -t &
numlockx &
setxkbmap -layout us,ar && setxkbmap -option 'grp:win_space_toggle'&
clipmenud &
flameshot &

# for enabling gnome-keyring 
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

picom &

exec bspwm
