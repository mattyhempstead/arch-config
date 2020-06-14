## Assorted commands for configuring desktop

# Monitor placement
#xrandr --output HDMI-3 --primary
#xrandr --output DP-1 --right-of HDMI-3
#xrandr --output DP-3 --left-of HDMI-3 
xrandr --output DP-5 --primary
xrandr --output DP-1 --right-of DP-5
xrandr --output HDMI-0 --left-of DP-5


# Mouse sensitivity
xinput set-prop 'Logitech G502 HERO Gaming Mouse' 'libinput Accel Speed' -0.75

# Remove pc beeping noise
xset -b


