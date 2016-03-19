[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
export PANEL_FIFO="/tmp/panel-fifo"
emulate sh -c 'source /etc/profile'
