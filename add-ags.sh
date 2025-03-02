#!/bin/bash

PKGS="aylurs-gtk-shell-git libastal-meta libastal-gjs-git libastal-git libastal-4-git libastal-auth-git libastal-apps-git libastal-battery-git libastal-bluetooth-git libastal-cava-git libastal-greetd-git libastal-hyprland-git libastal-io-git libastal-mpris-git libastal-network-git libastal-notifd-git libastal-powerprofiles-git libastal-river-git libastal-tray-git libastal-wireplumber-git "

GPGKEY="E40E7EDDF0FF9143" PACKAGER="ThePolishCat <damianadam000@gmail.com>" aur sync --repo catlinux --root x86_64 --noview $PKGS
