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
- Make checkboxes checkboxes again (not radios!) - seems like Orchis doesn't agree
- Adopt a common comment standard of capitalization and spacing
- Make all modules and install.sh fully idempotent
  - Cleanup before all files are downloaded and after they're used
  - Add to script that calls each installer:
  ```bash
  export SKYOS_BUILD_PATH=/tmp/skyos
  mkdir $SKYOS_BUILD_PATH
  ```
- Fix terminal module seemingly not working in VM (fresh install without pre-existing terminal RC seems to break it)
- Quiet module output unless verbose specified
- Make hover of system tray icons like network and bluetooth look like discord and OBS
  - https://forum.xfce.org/viewtopic.php?id=14586
  - Doesn't seem like this is supported yet unfortunately
- Make `[Y/n]` prompts DRY. Probably export a function from arginstall for use in modules
  - Make it able to handle Y and N, retrying on anything else
  - Add it to the icons module and use it within arginstall
- Come up with a way to remove all the temp files and repos downloaded and created along the way
- Add `skyos` info command
- Add optional module's apps to the start menu when selected
  - Probably something like pushing them to the file programatically and generating the whisker-menu.rc file on-the-fly
  - Or actually, better yet add them from within the optional module
- Check if device is a laptop and then push battery to status bar if so
  - Could do this based off whether battery is present
  - Or: `dmidecode --string chassis-type`
  - From https://superuser.com/questions/877677/programatically-determine-if-an-script-is-being-executed-on-laptop-or-desktop
- Fix settings icon in start menu, it looks bad, probably replace it with another icon. Can use GTK CSS IIRC
- Fix Steam and Discord icons. Both also look awful in Kora
- Add full module list and descriptions to either README or dedicated modules.md file
- Disable the super bright and kind of annoying alt-tab blue background
- Add SkyOS-colored logo to neofetch to please Thoth
- Use kickstart files and automate ISO build process with Jenkins
  - https://pagure.io/fedora-kickstarts/blob/main/f/fedora-live-xfce.ks
  - https://pagure.io/fedora-kickstarts/blob/main/f/fedora-xfce-common.ks
  - https://pagure.io/fedora-kickstarts/tree/main
  - https://docs.fedoraproject.org/en-US/remix-building/remix-ci/
  - https://fedoraproject.org/wiki/Remix#How\_do\_I\_remix\_Fedora?
