#!/bin/bash

export SKYOS_REPO_PATH=$(pwd)
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

for MODULE in $(find modules/default/ -type f ! -name '*.swp'); do
  bash -e "$MODULE" || { echo "$MODULE failed, halting."; break; }
done
