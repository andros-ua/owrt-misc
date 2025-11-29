This commit introduces OpenWrt U-Boot layout support
for the CreatLentem CLT-R30B1, enabling:
- Open-source U-Boot with an effective recovery mechanism
- Maximum available storage space for OpenWrt
- Unified firmware across different device variants

OpenWrt U-Boot flash instructions
---------------------------------
1. Flash ordinary OpenWrt image.
2. Login into the device and backup everything, especially 'Factory' part.
3. Unlock mtd partitions:
    apk add kmod-mtd-rw
    insmod mtd-rw i_want_a_brick=1
4. Write new BL2 and FIP:
    mtd write openwrt-mediatek-filogic-creatlentem_clt-r30b1-ubootmod-preloader.bin BL2
    mtd write openwrt-mediatek-filogic-creatlentem_clt-r30b1-ubootmod-bl31-uboot.fip FIP
5. Set static IP on your PC:
    IP 192.168.1.254 mask 255.255.255.0
6. Serve OpenWrt initramfs image using TFTP server.
7. Reboot device, wait for TFTP recovery to complete.
8. After OpenWrt has booted, perform sysupgrade.

BL2 and FIP Recovery
--------------------
Use mtk_uartboot to recover corrupted BL2 or FIP via UART:
https://github.com/981213/mtk_uartboot
