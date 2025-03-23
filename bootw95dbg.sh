#!/bin/sh

exec qemu-system-i386 -net nic,model=pcnet -net user -accel kvm -hda tools/w95dbg.img -cdrom install.iso
