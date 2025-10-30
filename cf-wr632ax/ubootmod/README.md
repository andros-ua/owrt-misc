OpenWrt U-Boot flash instructions
---------------------------------
1. Flash ordinary OpenWrt image.
2. Login into the device and backup everything, especially 'Factory' part.
3. Unlock mtd partitions:
    apk install kmod-mtd-rw
    insmod mtd-rw i_want_a_brick=1
4. Write new BL2 and FIP:
    mtd write openwrt-mediatek-filogic-comfast_cf-wr632ax-ubootmod-preloader.bin BL2
    mtd write openwrt-mediatek-filogic-comfast_cf-wr632ax-ubootmod-bl31-uboot.fip FIP
5. Set static IP on your PC:
    IP 192.168.1.254/24, GW 192.168.1.1
6. Serve OpenWrt initramfs image using TFTP server.
7. Reboot device, wait for TFTP recovery to complete.
8. After OpenWrt has booted, perform sysupgrade.
