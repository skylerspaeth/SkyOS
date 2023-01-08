# SkyOS
SkyOS is a Fedora post-install script to build a familiar, Windows-like desktop on Linux.

The latest release, SkyOS Hibiscus, is designed to be used on a brand new Fedora 36 system, though will likely work fine on one already setup.

## Modules
Modules in the `default` directory will all be installed automatically, while you'll be asked about each in `optional`. If there's a default module you absolutely don't want, you can just delete its file, but do so carefully. You may break another module's dependency.

List of modules:
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

![SkyOS Desktop Screenshot](/doc/desktop.png)
