#
# Makefile for the linux RomFS filesystem routines.
#

# obj-$(CONFIG_ROMFS_FS) += romfs.o
obj-m := romfs.o

romfs-y := storage.o super.o
KDIR:=/lib/modules/$(shell uname -r)/build

PWD:=$(shell pwd)

default:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
# ifneq ($(CONFIG_MMU),y)
# romfs-$(CONFIG_ROMFS_ON_MTD) += mmap-nommu.o
# endif

