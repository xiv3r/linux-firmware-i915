#!/bin/bash

###
wget -O firmware.zip https://github.com/xiv3r/linux-firmware-i915/releases/download/firmware-i915/firmware.zip

rm /lib/firmware/i915/*

unzip -o firmware.zip -d /lib/firmware/i915

