#!/bin/sh

qemu-system-x86_64 \
    -m 64M \
    -nographic \
    -kernel bzImage \
    -initrd rootfs.cpio \
    -append "console=ttyS0 oops=panic loglevel=3 panic=-1 pti=on kaslr" \
    -no-reboot \
    -cpu kvm64,+smap,+smep \
    -monitor /dev/null \
    -net nic,model=virtio \
    -net user \
    -s

