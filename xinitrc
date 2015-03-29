# OpenBox
#exec openbox-session

# TWM
#exec twm

# Window Maker
#exec wmaker

# EvilWM
#exec evilwm -snap 10 -bw 2 -fg red

# i3
#exec i3

#xrdb ~/.Xdefaults
xset +fp ~/.fonts
xset fp rehash

~/Appz/compton-master/compton &
nitrogen --restore &
sxhkd &
conky &
#gm &
urxvtd -q -f -o
#urxvt &

# SWM
#exec swm

# Bspwm
exec bspwm

# 2bwm
#~/Appz/2bwm-master/2bwm 

# MCWM
#exec ~/Appz/mcwm-20130209-2/mcwm

# Penta
#~/Appz/Penta-master/penta.py
