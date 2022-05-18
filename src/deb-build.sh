#!/usr/bin/env bash

rm -f ../initramfs-extract_*
rm -f ../var/deb/initramfs-extract_*

#debuild

debuild -i -us -uc

mkdir -p ../var/deb

mv ../initramfs-extract_* ../var/deb/
