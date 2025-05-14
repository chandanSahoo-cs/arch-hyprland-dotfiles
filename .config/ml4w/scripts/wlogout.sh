#!/bin/bash

echo "Power button pressed" >>/var/log/power_button.log

res_w=$(hyprctl -j monitors | jq '.[] | select(.focused==true) | .width')
res_h=$(hyprctl -j monitors | jq '.[] | select(.focused==true) | .height')
h_scale=$(hyprctl -j monitors | jq '.[] | select (.focused == true) | .scale' | sed 's/\.//')

# Check if values are present
if [[ -z "$res_h" || -z "$h_scale" || "$h_scale" -eq 0 ]]; then
    echo "$(date) >> Error: Missing resolution or scale info" >>"$LOG_FILE"
    exit 1
fi

w_margin=$((res_h * 27 / h_scale))
wlogout -b 5 -T $w_margin -B $w_margin
