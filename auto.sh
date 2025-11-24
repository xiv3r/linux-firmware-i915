#!/bin/bash

# Download
wget https://github.com/xiv3r/linux-firmware-i915/releases/download/firmware-i915/firmware.zip

# Install
unzip firmware.zip
sudo rm -rf /lib/firmware/i915/*
sudo mv linux-firmware/i915/* /lib/firmware/i915/

# Update the initramfs
sudo update-initramfs -u -k all
