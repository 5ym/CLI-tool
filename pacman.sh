#!/bin/sh

sudo pacman -Syu --noconfirm && (sudo pacman -Qdtq | xargs sudo pacman -Rs --noconfirm) ; sudo pacman -Sc --noconfirm
yay -Syu --noconfirm && (yay -Qdtq | xargs yay -Rs --noconfirm) ; yay -Sc --noconfirm
