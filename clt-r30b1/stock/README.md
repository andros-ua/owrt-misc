```
1. Backup all mtd partitons, especially Factory!
2. Download https://downloads.openwrt.org/releases/25.12.4/targets/mediatek/filogic/openwrt-25.12.4-mediatek-filogic-creatlentem_clt-r30b1-112m-squashfs-sysupgrade.bin
3. Download https://github.com/andros-ua/owrt-misc/raw/refs/heads/main/clt-r30b1/stock/FIP.bin
4. Copy FIP.bin to /tmp on the router via SCP
5. Write new FIP to the router
   apk add kmod-mtd-rw
   insmod mtd-rw i_want_a_brick=1
   mtd write /tmp/FIP.bin FIP
6. Power off the router
7. Set your PC ip to 192.168.1.254 mask 255.255.255.0
8. Power on the router while pressing the mesh button for 3 seconds.
   The U-Boot Flash WebUI will be available at http://192.168.1.1
9. Choose mtd layout: immortalwrt-112m
10. Browse openwrt-25.12.4-mediatek-filogic-creatlentem_clt-r30b1-112m-squashfs-sysupgrade.bin on your PC
11. Flash and wait for the boot of the new firmware.
```