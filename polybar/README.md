# Polybar Nord Theme

> Inspired by [https://github.com/Yucklys/polybar-nord-theme](https://github.com/Yucklys/polybar-nord-theme)

## Install

### Dependencies

Required dependency:

1. [Font Awesome](https://www.archlinux.org/packages/community/any/ttf-font-awesome/)
2. [Noto Symbols](https://www.google.com/get/noto/#sans-zsym) or other font which support [Dingbat negative digit sans-serif](https://www.toptal.com/designers/htmlarrows/symbols/dingbat-negative-circled-sans-serif-digit-one/) 

Optional dependency:

3. [Playerctf](https://github.com/altdesktop/playerctl) required by `playerctl` module

### Install

`~/.config/polybar` is the default path for polybar configuration, if you want to use other location, change `~/.config/polybar` to your location and also change the location specified in the `launch.sh` file.

## Usage

1. Enter the installation directory `cd ~/.config/polybar`.
2. Run `./launch.sh light` for light theme, and `./launch.sh dark` for dark theme.
3. For customization, most of the options are listed in `nord-config` file. For more details, check [File Structure](#File Structure) part.

## File Structure

### `dark-colors` and `light-colors`

The color for dark and light theme. You don't need to edit these flies unless you want to change the color globally.

### `dark-config` and `light-config`

The config files for dark and light theme. Most of the settings are covered by `nord-config` except font settings. You can change the font setting in these files.

### `nord-config`

The global config file. You can customize the position of the bars, DPI setting, modules, etc. The detailed help messages are in the comment for each option.

### `nord-modules`

All the availables modules for the bar. For some specific modules you need to edit these file. For more details of these modules check [Module Details](#Module Details).

### `scripts`

The directory contains all the scripts and files that required by the modules.

## Module Details

1. [alsa](#alsa)
2. [backlight](#backlight)
3. [date](#date)
4. [notify](#notify)
5. [network](#network)
6. [network](#network)
7. [battery](#battery)
8. [mpd](#mpd)
9. [i3](#i3)
10. [playerctl](#playerctl)
11. [temperature](#temperature)
12. [memory](#memory)
13. [cpu](#cpu)


### alsa

Display current volume. The default sound card is `default`, you can change this option in `nord-config`.

| Bind             | Event                |
| ---------------- | -------------------- |
| mouse left click | toggle mute          |
| scroll up        | volume + 5% for each |
| scroll down      | volume - 5% for each |

### backlight

Display current lightness of screen.

| Bind             | Event                   |
| ---------------- | ----------------------- |
| scroll up        | lightness + 5% for each |
| scroll down      | lightness - 5% for each |
| mouse left click | toggle redshift         |

### date

Display date and time.


### notify

Notify icon.

| Bind     | Event                                                         |
| -------- | ------------------------------------------------------------ |
| mouse left click | key event `ctrl+grave`, the default hotkey for dunst history notify |

### network-wlan

Display network connection icon for wifi and the current IP address.
Requires to set `nord-config.interface-wlan`.

### network-eth

Display network connection icon for ethernet and the current IP address.
Requires to set `nord-config.interface-eth`.


### battery

Display battery information.
Requires to set `nord-config.battery-full-at`, `nord-config.battery-bat` and `nord-config.battery-adp`.

### mpd

Display mpd information. It is hidden when mpd process does not running. There are three layout corresponding to **play**, **pause** and **stop**.

- Display full content when in play status, including *pause*, *prev*, *artist - song*, *next*, *stop*, *progress bar*, *cycle* and *random*.
- Display part of the content when in pause status, including *play*, *prev*, *artist - song*, *next*, *stop*.
- Display *play* only in stop status.

Requires `nord-config.mpd-host` and `nord-config.mpd-port`.

### i3

Display i3 workspace icon. Icon list can be customized in `nord-top`.

| Bind     | Event                     |
| -------- | ------------------------ |
| mouse left click | i3-msg workspace <index> |

### playerctl

Display current music playing status with song title and artist name using `playerctl` command.

| Bind     | Event                     |
| -------- | ------------------------ |
| mouse left | toggle play or pause  |
| mouse right | next song  |

### temperature

Display internal temperature. You can specify the thermal-zone in `nord-config.thermal-zone`, the default value is 0. When the temperature is lower than `nord-config.base-temperature` it will switch to lowest temperature layout; when the temperature is higher than `nord-config.warn-temperature` is will switch to warning temperature layout. The color of icon will change between `base-temperature` and `warn-temperature`, so set the proper values for your environment.

### memory

Display memory usage in the format used/total.

### cpu

Display CPU usage.
