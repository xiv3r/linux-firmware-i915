#!/bin/bash

###
wget -O firmware.zip https://github.com/xiv3r/linux-firmware-i915/releases/download/firmware-i915/firmware.zip

unzip firmware.zip

rm /lib/firmware/i915/*

mv linux-firmware/i915/* /lib/firmware/i915/
