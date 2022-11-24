#!/bin/bash

CHASSIS_TYPE=$(sudo dmidecode --string chassis-type)

if [[ "$CHASSIS_TYPE" == "Desktop" ]] || [[ "$CHASSIS_TYPE" == "Other" ]]; then
  echo "We think this device is a desktop"
else
  echo "We think this device is a laptop"
  # push battery icon to system tray
fi
