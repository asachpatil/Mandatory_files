setenv kernel_addr_r 0x01000000
setenv ramdisk_addr_r 0x2000000
fatload mmc 0:1 ${kernel_addr_r} Image
fatload mmc 0:1 ${ramdisk_addr_r} initrd.img
setenv initrdsize $filesize
setenv bootargs console=ttyUSB0,115200 earlyprintk root=/dev/root rootwait panic=10
booti ${kernel_addr_r} ${ramdisk_addr_r}:${initrdsize} ${fdt_addr_r}
