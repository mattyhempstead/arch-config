## Assorted commands for configuring desktop

# Monitor placement
xrandr --output DP-1 --primary
xrandr --output DP-5 --left-of DP-1

xrandr --output HDMI-0 --right-of DP-1
xrandr --output HDMI-0 --mode 1600x900 

# Mouse sensitivity
xinput set-prop 'Logitech G502 HERO Gaming Mouse' 'libinput Accel Speed' -0.75

xinput set-prop 'pointer:Logitech MX Master 3' 'libinput Accel Speed' -0.8

# Remove pc beeping noise
#xset -b



xset -dpms s off


