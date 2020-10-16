xbindkeys &
nm-applet &
blueman-applet &
udiskie -t &
numlockx &
setxkbmap -layout us,ar && setxkbmap -option 'grp:win_space_toggle'&
clipmenud &

# for enabling gnome-keyring 
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

picom &

alttab -w 1 -d 2 -font xft:Hack:style=Regular:8 -bg #0A0E14 -fg #FFB454 -frame #FFB454 -t 110x80 -i 110x40&

exec bspwm
