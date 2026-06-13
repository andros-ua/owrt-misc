[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/J4C2217YIW)

- ### `patch_factory.sh`
>COMFAST CF-WR632AX Factory Patcher
Applies a targeted 55-byte patch to restore missing calibration data in the 2.4 GHz Wi-Fi EEPROM region.

>Why this matters: Corrupted or absent calibration data in this region is a known cause of overheating,
degraded wireless performance, and intermittent system resets on the CF-WR632AX.
This patch addresses the root cause directly.

>What it touches: Only the affected 2.4 GHz calibration bytes.
All other EEPROM data — 5 GHz radio config, MAC address, serial number, and everything else — is left completely intact.

## Download
```shell
wget https://github.com/andros-ua/owrt-misc/raw/refs/heads/main/cf-wr632ax/factory/patch_factory.sh \
-O /tmp/patch_factory.sh
chmod +x /tmp/patch_factory.sh

```
Usage: `patch_factory.sh <path-to-factory>`

Example:
```shell
apk add kmod-mtd-rw
insmod mtd-rw i_want_a_brick=1
cat /proc/mtd
----------------------------------------
| dev:    size   erasesize  name       |
| mtd0: 00100000 00020000 "BL2"        |
| mtd1: 00080000 00020000 "u-boot-env" |
| mtd2: 00200000 00020000 "Factory"    |
| mtd3: 00200000 00020000 "FIP"        |
| mtd4: 07000000 00020000 "ubi"        |
----------------------------------------
/tmp/patch_factory.sh /dev/mtd2
Apply A4 to /dev/mtd2 at position 588
Apply A6 to /dev/mtd2 at position 589
Apply A6 to /dev/mtd2 at position 590
Apply A6 to /dev/mtd2 at position 591
Apply A3 to /dev/mtd2 at position 592
Apply 91 to /dev/mtd2 at position 593
Apply 91 to /dev/mtd2 at position 595
Apply 91 to /dev/mtd2 at position 597
Apply 91 to /dev/mtd2 at position 599
Apply 89 to /dev/mtd2 at position 601
Apply 0C to /dev/mtd2 at position 624
Apply C2 to /dev/mtd2 at position 1173
Apply C2 to /dev/mtd2 at position 1174
Apply C2 to /dev/mtd2 at position 1175
Apply C0 to /dev/mtd2 at position 1176
Apply C1 to /dev/mtd2 at position 1177
Apply C1 to /dev/mtd2 at position 1178
Apply 81 to /dev/mtd2 at position 1185
Apply 81 to /dev/mtd2 at position 1186
Apply 81 to /dev/mtd2 at position 1187
Apply 81 to /dev/mtd2 at position 1188
Apply 81 to /dev/mtd2 at position 1189
Apply C1 to /dev/mtd2 at position 1190
Apply 81 to /dev/mtd2 at position 1191
Apply 81 to /dev/mtd2 at position 1192
Apply C1 to /dev/mtd2 at position 1193
Apply C1 to /dev/mtd2 at position 1194
Apply C1 to /dev/mtd2 at position 1195
Apply 81 to /dev/mtd2 at position 1196
Apply C0 to /dev/mtd2 at position 1197
Apply C0 to /dev/mtd2 at position 1198
Apply C1 to /dev/mtd2 at position 1199
Apply C1 to /dev/mtd2 at position 1200
Apply C1 to /dev/mtd2 at position 1201
Apply C1 to /dev/mtd2 at position 1202
Apply C1 to /dev/mtd2 at position 1203
Apply C1 to /dev/mtd2 at position 1204
Apply 83 to /dev/mtd2 at position 1205
Apply 83 to /dev/mtd2 at position 1206
Apply 83 to /dev/mtd2 at position 1207
Apply 83 to /dev/mtd2 at position 1208
Apply 83 to /dev/mtd2 at position 1209
Apply 83 to /dev/mtd2 at position 1210
Apply 83 to /dev/mtd2 at position 1211
Apply 83 to /dev/mtd2 at position 1212
Apply 81 to /dev/mtd2 at position 1213
Apply 81 to /dev/mtd2 at position 1214
Apply 80 to /dev/mtd2 at position 1215
Apply B8 to /dev/mtd2 at position 2449
Apply B8 to /dev/mtd2 at position 2453
Apply CA to /dev/mtd2 at position 2457
Apply 01 to /dev/mtd2 at position 2464
Apply C4 to /dev/mtd2 at position 2470
Apply BB to /dev/mtd2 at position 2472
Apply 87 to /dev/mtd2 at position 2474
Patch applied: 55 bytes

```

- ### `Factory.CF-WR632AX.bin`
>[!CAUTION]
>**You almost certainly don't need this file.**
>Published for academic/research purposes and
>as a last-resort recovery option in the event of native partition loss.
  - Factory partition image for the **COMFAST CF-WR632AX** router.
  - MAC addresses and serial number have been scrubbed (replaced with `8`s).
