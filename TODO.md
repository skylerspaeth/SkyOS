# To-do list
- Install `sudo dnf install xfce4-volumed` to get GMMK Pro volume knob working out of box (more info here: https://forum.xfce.org/viewtopic.php?id=10948)
- Use custom LightDM WebKit Greeter
- Preinstall apps, drivers, and tools
	- Allow option to skip these
	- Try to autodetect but prompt to confirm for video driver type
  - Add default zshrc and optional vimrc
	- goregion
	- Kraken RGB Driver
  - Lossless Cut:
```bash
skylerspaeth@[fedora-desktop] ~ % cat /usr/share/applications/Lossless-Cut.desktop
[Desktop Entry]
Name=Lossless Cut
Exec=/opt/LosslessCut-linux-x86_64.AppImage
comment=video trimmer
Type=Application
Terminal=false
Encoding=UTF-8
Categories=Utility;
```
- https://gitlab.xfce.org/xfce/xfwm4/-/issues/559
- https://github.com/chjj/compton/issues/197
- https://ask.fedoraproject.org/t/really-long-boot-time/3242
- Prevent login screen from showing up on cursor screen, rather stay on main display
- Bind Win + L to xflock4
- Add to script that calls each installer:
```bash
export SKYOS_BUILD_PATH=/tmp/skyos
mkdir $SKYOS_BUILD_PATH
```
- Make checkboxes checkboxes again (not radios!) - seems like Orchis doesn't agree
- Adopt a common comment standard of capitalization and spacing
- Make all modules and install.sh fully idempotent
  - Cleanup before all files are downloaded and after they're used
- Fix terminal module seemingly not working in VM (fresh install without pre-existing terminal RC seems to break it)
- Announce each module as they run, quiet module output unless verbose specified
- Picom blur only taskbar and start menu
- Make hover of system tray icons like network and bluetooth look like discord and OBS
  - https://forum.xfce.org/viewtopic.php?id=14586
  - Doesn't seem like this is supported yet unfortunately
- Implement check on all module scripts to ensure they're not being ran indivudally
  - Since the modules a aren't designed for this, I don't want any unintended consequences
  - Worth checking if this can be put into an exported function in `arginstall.sh` and still run as expected
  - To do this, use a check like:
```bash
#!/bin/bash

if ! [[ $SHLVL -gt 2 ]]; then
  echo "This script is not designed to be ran individually. Failing"
  exit 1
else
  echo "Running successfully"
fi
```
- Make `[Y/n]` prompts DRY. Probably export a function from arginstall for use in modules
  - Make it able to handle Y and N, retrying on anything else
  - Add it to the icons module and use it within arginstall
- Come up with a way to remove all the temp files and repos downloaded and created along the way
- Add `skyos` info command
