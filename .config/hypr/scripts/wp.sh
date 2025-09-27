#!/usr/bin/env bash

FOLDER=~/Pictures # wallpaper folder
CHOICE=$(nsxiv -otb $FOLDER/*)
echo $CHOICE
