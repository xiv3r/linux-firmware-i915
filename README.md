# linux-firmware-i915
### fixed initamfs missing i915 linux firmware from /lib/firmware/i915

- [Official i915 Firmware](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915)

## Auto Install
```sh
curl https://raw.githubusercontent.com/xiv3r/linux-firmware-i915/refs/heads/main/install.sh | sudo sh
```
## Install

```sh
sudo rm -rf /lib/firmware/i915
```
```sh
wget -r -l 1 -A "*.bin" --no-parent -e robots=off -U Mozilla https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915/
```
```sh
sudo mv git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915 /lib/firmware/
```

## Update the initramfs

```sh
sudo update-initramfs -u -k all
```
