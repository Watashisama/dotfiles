#!/usr/bin/env sh

echo -e "Make sure that the archkeyring is up to date"
sudo pacman -S nushell
/usr/bin/nu ./pkg.nu
