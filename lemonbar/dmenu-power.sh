#!/bin/bash

function powermenu {

    options="Cancel\nShutdown\nReboot\nLogout"

    selected=$(echo -e $options | dmenu -p "Power Menu" -fn "SauceCodePro Nerd Font-10" -sb '#377375' )

    if [[ $selected = "Shutdown" ]]; then
        poweroff

    elif [[ $selected = "Reboot" ]]; then
        reboot
    
    elif [[ $selected = "Logout" ]]; then
        #name=$(whoami)
        pkill -KILL -u $(whoami)
         

    elif [[ $selected = "Cancel" ]]; then
        return
    
    fi

}

powermenu
