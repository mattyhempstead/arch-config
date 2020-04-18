## Assorted commands for configuring desktop

# Monitor placement
xrandr --output HDMI-3 --primary
xrandr --output DP-1 --right-of HDMI-3
xrandr --output DVI-I-1 --left-of HDMI-3 

# Mouse sensitivity
xinput set-prop 'Logitech G502 HERO Gaming Mouse' 'libinput Accel Speed' -0.75

# Remove pc beeping noise
xset -b


