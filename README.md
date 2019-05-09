# Overview

[AtmosFX](https://atmosfx.com/) Video player(s) for Halloween

# Installation Instructions

1. Download Raspbian Stretch Lite: https://www.raspberrypi.org/downloads/raspbian/
1. Burn image to SD using Etcher: https://www.balena.io/etcher/
1. Add empty `ssh` file to root of SD.
1. Add `wpa_supplicant.conf` to root of SD containing Wi-Fi network settings: https://www.raspberrypi.org/forums/viewtopic.php?t=191252
1. Boot the Raspberry PI
1. Set the clock: `sudo date -s "2019-05-06"`
1. Configure: `sudo raspi-config`
    1. Add and set the current locale as default
    1. Change the timezone
    1. Change the hostname
    1. Update video ram to 256
1. Download info-beamer pi: https://info-beamer.com/download/player
1. Copy installer installer to PI via FileZilla: https://filezilla-project.org/
1. Install info-beamer pi: https://info-beamer.com/product/info-beamer-pi
    * Note: install dependencies based on the README.txt that is part of the installation.  Ie. Flip steps 2 and 3.
1. Setup Nodes
    * Copy 'nightmare' / 'withering' folders to the 'halloween' subfolder.
    * Copy media into the folders
1. Setup info-beamer for production: https://info-beamer.com/blog/running-info-beamer-in-production
    * Copy `run` and the `log` folder to `/service/info-beamer/log`


