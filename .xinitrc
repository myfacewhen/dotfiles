#!/bin/sh
# start some nice programs

 if [ -d /etc/X11/xinit/xinitrc.d ] ; then
  for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
   [ -x "$f" ] && . "$f"
  done
  unset f
 fi

# twm &
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login

# wallpaper
feh --bg-center ~/Pictures/wallpaper/02678_basilicapapaledisanpietro_1920x1080.jpg

# custom PATHs
export PATH=$PATH:~/bin:~/scripts

# X settings
xsetroot -cursor_name left_ptr &
xset +fp /usr/share/fonts/local
xset fp rehash
xset r rate 275 30
xrdb -merge ~/.Xresources

# WM and more
urxvtd &
exec i3 
