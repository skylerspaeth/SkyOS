#!/bin/bash

export SKYOS_BUILD_PATH=/tmp/skyos
mkdir $SKYOS_BUILD_PATH

gclonecd() {
  git clone "$1" && cd "$(basename "$1" .git)"
}
export -f gclonecd

modules/default/theme
