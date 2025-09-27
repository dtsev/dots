#!/bin/bash
# or
#!/usr/bin/env bash

#vesktop
cp -f ~/.cache/wal/discord_pywal_updated.css /home/denis/.var/app/dev.vencord.Vesktop/config/vesktop/themes/

#dunst
# Symlink dunst config
ln -sf ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc

#hyprland
cp -f ~/.cache/wal/colors.conf /home/denis/.config/hypr/colors.conf


# Restart dunst with the new color scheme
pkill dunst
dunst &