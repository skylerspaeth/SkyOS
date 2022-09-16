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
      FULL=true
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

echo
echo "$BRAND_TEXT (v$VERSION)"
echo
