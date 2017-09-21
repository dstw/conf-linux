#!/bin/bash
#
# Script to disable/enable mouse/touchpad
# Get device id (dev_id) using `xinput --list`
# https://lxadm.com/Disable_/_enable_keyboard_and_mouse_in_Linux

dev_id=12
dev_status=`/usr/bin/xinput --list-props $dev_id | grep "Device Enabled" | tail -c 2`

if [ $dev_status -eq 0 ]; then
	/usr/bin/xinput set-int-prop $dev_id "Device Enabled" 8 1
else
	/usr/bin/xinput set-int-prop $dev_id "Device Enabled" 8 0
fi
