numlockx &
slstatus &
nitrogen --restore &
dunst -conf ~/.config/dunstrc &
copyq &
kmix --keepvisibility &
setxkbmap -layout "us,ru" -option grp:alt_shift_toggle &
x11vnc -localhost -many -display :0 &
picom &
sleep 15 &&
noisetorch -i &
obs --startreplaybuffer &
qbittorrent &
ciadpi --ip 0.0.0.0 --port 1080 -q1+s -s25+s -o5+s f-1 -S -As
