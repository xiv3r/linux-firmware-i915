# linux-firmware-i915
### fixed initamfs missing i915 linux firmware from /lib/firmware/i915

- [Official i915 Firmware](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915)

## Install the latest i915 firmware

```sh
sudo rm -rf /lib/firmware/i915
```
```sh
wget -r -l 1 -A "*.bin" --no-parent -e robots=off -U Mozilla https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915/
```
```sh
sudo mv git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/* /lib/firmware/i915
```
## Update the initramfs
> 
```sh
sudo update-initramfs -u -k all`
```
