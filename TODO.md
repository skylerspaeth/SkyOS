# To-do list
- Use Kora icon theme
- Switch to a Fedora 36 base due to newer packages
  - Install `sudo dnf install xfce4-volumed` to get GMMK Pro volume knob working out of box (more info here: https://forum.xfce.org/viewtopic.php?id=10948)
  - Try and find a way to get DockBarX installed easily in Fedora
- Set pinned icons for DockBarX
- Change DockBarX theme to "Jonatheme"
- Customize lightdm
- Preinstall apps, drivers, and tools
	- Allow option to skip these
	- Try to autodetect but prompt to confirm for video driver type
	- Steam
	- Discord
	- goregion
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
- Status Tray Items -> Behavior -> Square Items - figure that out in xfconf-query
- https://gitlab.xfce.org/xfce/xfwm4/-/issues/559
- https://github.com/chjj/compton/issues/197
- https://ask.fedoraproject.org/t/really-long-boot-time/3242
- https://github.com/hanschen/ksuperkey
- Prevent login screen from showing up on cursor screen, rather stay on main display
- Bind Win + L to xflock4
