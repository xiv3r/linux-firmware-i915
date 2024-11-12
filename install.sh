#!/bin/sh

# Install the latest i915 firmware
sudo rm -rf /lib/firmware/i915
###
wget -r -l 1 -A "*.bin" --no-parent -e robots=off -U Mozilla https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915/
###
sudo mv git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/* /lib/firmware/
###
sudo rm -rf git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/
## Update the initramfs
sudo update-initramfs -u -k all
