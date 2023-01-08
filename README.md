<p align="center">
  <br>
  <img width="25%" src="https://raw.githubusercontent.com/skylerspaeth/SkyOS/master/res/skyos.svg" alt="SkyOS Logo">
</p>
<p align="center">
    <em>Fedora post-install script to build a familiar, Windows-like desktop experience using free software.</em>
</p>
<p align="center">
    <img src="https://img.shields.io/github/v/release/skylerspaeth/skyos?include_prereleases&color=%4a07b0" alt="Release version">
    <img src="https://img.shields.io/badge/name-Hibiscus-4a07b0" alt="Release name">
    <img src="https://img.shields.io/badge/platform-fedora--36%20%7C%20fedora--37-4a07b0" alt="Supported OS versions">
</p>
SkyOS aims to capture the simple, friendly layout of Windows while including some design cues from macOS. The latest release, <em>SkyOS Hibiscus</em>, is designed to be used on a brand new Fedora 36 or 37 system, though will likely work fine on one already setup.

<p></p>

![SkyOS Desktop Screenshot](/doc/desktop.png)

## Table of Contents
- [Install](#install)
- [Modules](#modules)
- [Contributing](#contributing)
- [Credits](#credits)

## Install
The `install.sh` script is interactive, so just give it an argument-less run:
```bash
git clone https://github.com/skylerspaeth/SkyOS.git
cd SkyOS/
./install.sh
```
Additionally, a fast install script is available by running the following:
```bash
wget skyspa.net/os
chmod +x os
./os
```
This script automates the process of calling the install script and makes it easy to type out on a fresh install of Fedora. For the time being, this script runs `install.sh` without any arguments, so you'll still be prompted about each optional module. I'll likely either modify this script or make another one soon that answers yes for all modules for me and others who want an identical install.

## Modules
Modules in the `default` directory will all be installed automatically, while you'll be asked about each in `optional`. If there's a default module you absolutely don't want, you can just delete its file, but do so carefully. You may break another module's dependency.

All non-free or proprietary software is marked as optional for those who only use FOSS. Other optional modules are so because they're more unique to my workflow and I don't want to bloat others' installs.

| Type | Name | Description |
| --- | --- | --- |
| default/ | desktop | Desktop environment customizations |
| default/ | firefox | Browser configuration |
| default/ | icons | Install and use Kora icons |
| default/ | keybindings | Windows-like keybindings |
| default/ | login | Configure login screen, profile picture |
| default/ | shell | Install zsh, configure, use as default |
| default/ | taskbar | Apply SkyOS taskbar layout |
| default/ | terminal | XFCE Terminal configuration |
| default/ | theme | Install Orchis, set as WM and DE theme |
| default/ | vim | Vim configuration, color scheme |
| default/ | wallpapers | Install wallpapers |
| optional/ | discord | Install Discord |
| optional/ | minecraft | Install Minecraft launcher |
| optional/ | obs | Install OBS (requires fusion free), setup replay buffer |
| optional/ | rpmfusion | Enable free & non-free RPM Fusion repos |
| optional/ | spotify | Install Spotify |
| optional/ | steam | Install Steam (requires fusion non-free) |

## Contributing
Pull requests adding new modules or editing existing ones are welcome, but if I don't think I would use it myself I can't promise to merge it. If you have any doubt, [issues](https://github.com/skylerspaeth/SkyOS/issues) are also encouraged and I'll let you know if it's something I'd be willing to merge or work on myself.

There's also a [to-do list](https://github.com/skylerspaeth/SkyOS/blob/master/TODO.md). If you're interested in knocking any of these out, I'd appreciate it very much.

## Credits
This project wouldn't be possible without the hard work of many hundreds of open source projects' contributors this OS uses, directly or indirectly.
Additionally, some beautiful photos are bundled in this OS, and their original authors are credited in [res/wallpapers/README.md](res/wallpapers/README.md).
