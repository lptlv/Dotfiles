#!bin/zsh

entries="󰐥 Shutdown\n󰑓 Reboot\n Suspend\n󰇅 BIOS"

selected=$(echo -e $entries|wofi --width 250 --height 210 --location 1 --xoffset 1619 --yoffset 5 --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
    shutdown)
        exec systemctl poweroff -i;;
    reboot)
        exec systemctl reboot;;
    suspend)
        exec sh ~/.config/river/scripts/screenlock.sh | systemctl suspend;;
    bios)
        exec systemctl reboot --firmware-setup;;
esac
