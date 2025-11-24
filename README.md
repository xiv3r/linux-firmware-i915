# linux-firmware-i915
### fixed initamfs missing i915 linux firmware from /lib/firmware/i915

- [Official i915 Firmware](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/plain/i915)

# Requirements 
```
sudo apt update
sudo apt install wget unzip -y
```
# Download
```
wget https://github.com/xiv3r/linux-firmware-i915/releases/download/firmware-i915/firmware.zip
```
# Install
```
unzip firmware.zip
```
```
sudo rm -rf /lib/firmware/i915/*
```
```
sudo mv firmware/lib/firmware/i915/* /lib/firmware/i915/
```

# Update the initramfs
```
sudo update-initramfs -u -k all
```
