## Assorted commands for configuring desktop

# Monitor placement
# xrandr --output DP-0 --primary --mode 1920x1080 --rate 60 --brightness 0.9
# xrandr --output HDMI-0 --left-of DP-0 --mode 1920x1080 --rate 144
# xrandr --output DP-4 --right-of DP-0 --mode 1920x1080 --rate 144

# xrandr --output DP-2 --right-of DP-4 --mode 1920x1080 --rate 60


# dads
# xrandr --output HDMI-0  --left-of DP-4  --mode 1920x1080 --rate 144
# xrandr --output DP-4    --primary       --mode 1920x1080 --rate 144
# xrandr --output DP-2    --right-of DP-4 --mode 1920x1080 --rate 144

# xrandr --output DP-2    --right-of DP-4 --mode 1920x1080 --rate 144

# xrandr \
#     --output DP-0 --primary --mode 1920x1080 \
#     --output HDMI-0 --mode 1920x1080 --left-of DP-0 --rate 144 \
#     --output DP-2 --mode 1920x1080 --right-of DP-0 --rotate normal --rate 144 \
#     --output DP-4 --mode 1920x1080 --above DP-0 --rate 144 \

xrandr \
    --output DVI-I-0 --off \
    --output DVI-I-1 --off \
    --output DP-2 --mode 1920x1080 --pos 0x1080 --rotate normal --rate 144 \
    --output DP-0 --primary --mode 1920x1080 --pos 1920x1080 --rotate normal \
    --output DP-1 --off \
    --output HDMI-0 --mode 1920x1080 --pos 3840x1080 --rotate normal --rate 144 \
    --output DP-3 --off \
    --output DP-4 --mode 1920x1080 --pos 1920x0 --rotate normal --rate 144 \
    --output DP-5 --off



# xrandr --output DP-2 --right-of DP-4 --mode 1920x1080 --rate 60


# xrandr --output DP-1 --primary --mode 1920x1080 --rate 60 --brightness 0.9

# xrandr --output DP-1 --primary --mode 1920x1080 --rate 60 --brightness 0.9
# xrandr --output HDMI-1 --left-of DP-1 --mode 1920x1080 --rate 60
# xrandr --output DP-3 --right-of DP-1 --mode 1920x1080 --rate 60


# Mouse sensitivity
#xinput set-prop 'Logitech G502 HERO Gaming Mouse' 'libinput Accel Speed' -0.75

xinput set-prop 'pointer:Logitech MX Master 3' 'libinput Accel Speed' -0.8

# Remove pc beeping noise
#xset -b



xset -dpms s off


