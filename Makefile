# Makefile for moving configs and files

HOME_DIR := $(HOME)

.PHONY: all move-configs move-pictures move-root-files

all: move-configs move-pictures move-root-files

# Move everything from .config to ~/.config
move-configs:
	@echo "Moving configuration files to ~/.config..."
	mkdir -p $(HOME_DIR)/.config
	cp -r .config/* $(HOME_DIR)/.config/

# Move all files from Pictures folder to ~/Pictures
move-pictures:
	@echo "Moving pictures to ~/Pictures..."
	mkdir -p $(HOME_DIR)/Pictures
	cp -r Pictures/* $(HOME_DIR)/Pictures/ 2>/dev/null || true

# Move .wezterm.lua, wallpaper-select-beta, and bfetch to home directory
move-root-files:
	@echo "Moving top-level files to ~..."
	@if [ -f .wezterm.lua ]; then cp .wezterm.lua $(HOME_DIR)/; fi
	@if [ -d wallpaper-select-beta ]; then cp -r wallpaper-select-beta $(HOME_DIR)/; fi
	@if [ -d bfetch ]; then cp -r bfetch $(HOME_DIR)/; fi

