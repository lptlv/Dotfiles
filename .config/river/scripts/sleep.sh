#!/bin/zsh

killall sleep.sh

swayidle -w \
         timeout 600 'sh /home/lptlv/.config/river/scripts/screenlock.sh' \
         timeout 1200 'systemctl suspend' \
         before-sleep 'playerctl pause' \
         before-sleep 'sh /home/lptlv/.config/river/scripts/screenlock.sh'
