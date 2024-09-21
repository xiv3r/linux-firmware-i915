# linux-firmware-i915
### fixed initamfs missing i915 linux firmware from /lib/firmware/i915

- Go to [Downloads](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915) and
copy the link of the missing firmware.

- Open the terminal and `cd /lib/firmware/i915`

- Example:`wget https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915/mtl_gsc_1.bin`

- Next Update the initramfs `sudo update-initramfs -u -k all`
