setenv kernel_addr_r 0x1000000
setenv ramdisk_addr_r 0x2000000
fatload mmc 0 ${kernel_addr_r} zImage
fatload mmc 0 ${fdt_addr} bcm2710-rpi-3-b.dtb 
fatload mmc 0 ${ramdisk_addr_r} initrd.img
setenv bootargs console=ttyUSB0,115200 earlyprintk root=/dev rootwait panic=10
bootm ${kernel_addr_r} ${ramdisk_addr_r} ${fdt_addr}
