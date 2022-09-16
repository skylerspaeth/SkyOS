#!/bin/bash

SCRIPT_NAME=$(basename "$0")

RELEASE=$(sed -n 1p version.txt)
VERSION=$(sed -n 2p version.txt)
DATE=$(sed -n 3p version.txt)

BRAND_TEXT=$(echo -e "\e[1m\u001b[38;5;93mSky\e[0m\u001b[0m\u001b[38;5;38mOS\e[0m $RELEASE")

INSTALL_HELP()
{
  echo "Use $SCRIPT_NAME to setup $BRAND_TEXT on your Fedora Linux machine."
  echo "Running the script with no arguments will enter interactive mode"
  echo "where you'll be asked about each optional module."
  echo
  echo "Syntax: ./$SCRIPT_NAME [-h|-f|-v|-V]"
  echo "Options:"
  echo "  -h    Display this help message"
  echo "  -f    Non-interactive, install all default and options"
  echo "  -v    Display version info and release date"
  echo "  -V    Verbose mode, display each script's name"
  echo
}

while getopts ":hfv" option; do
  case $option in
    h)
      INSTALL_HELP
      exit 0;;
    f)
      FULL_INSTALL=true
      ;;
    v)
      echo "$BRAND_TEXT (v$VERSION)"
      echo "Released $DATE"
      echo
      echo "Authored by Skyler Spaeth, inspired by the FOSS community"
      exit 0;;
    V)
      VERBOSE=true
      ;;
    \?)
      echo "Error: Invalid option '-$OPTARG'"
      echo "Try './$SCRIPT_NAME -h' for more information."
      exit 1;;
  esac
done

# script body
echo
echo "$BRAND_TEXT (v$VERSION)"
echo
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

RUN_MODULE() {
  bash -e "$MODULE" || { echo "$MODULE failed, halting."; break; }
}

for MODULE in $(find modules/default/ -type f ! -name '*.swp'); do
  RUN_MODULE
done

for MODULE in $(find modules/optional/ -type f ! -name '*.swp'); do
  if [ "$FULL_INSTALL" == true ]; then
    RUN_MODULE
  else 
    read -p "$MODULE? [Y/n]: " RUN; RUN="${RUN:=Y}"
    if [ "${RUN^^}" == "Y" ]; then
      RUN_MODULE
    fi
  fi
done
