#!/usr/bin/env sh

echo -e "Make sure that the archkeyring is up to date"
pacman -S nushell
/usr/bin/nu ./pkg.nu
