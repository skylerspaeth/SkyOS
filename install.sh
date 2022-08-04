#!/bin/bash

export SKYOS_BUILD_PATH=/tmp/skyos
# ensure the directory is empty
rm -rf $SKYOS_BUILD_PATH/*
mkdir -p $SKYOS_BUILD_PATH/

gclonecd() {
  git clone "$1" && cd "$(basename "$1" .git)"
}
export -f gclonecd

# ensure flathub is enabled for modules to get software from
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

modules/default/theme
modules/default/wallpapers
