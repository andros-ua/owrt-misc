# unbrick — MTK Router Recovery Utility

A Windows batch script for unbricking MediaTek-based routers over UART. Loads a BL2 preloader and U-Boot FIP image via [`mtk_uartboot`](https://github.com/981213/mtk_uartboot), then drops you straight into a serial console — with an optional TFTP server for sysupgrade image transfer. Everything you need to go from a dead router to a running OpenWrt install in one sitting.

---

## Requirements

Place the following tools in the same folder as `unbrick.cmd`, or ensure they are on your system `PATH`:

| Tool | Purpose |
|---|---|
| [mtk_uartboot](https://github.com/981213/mtk_uartboot) | Boots the router over UART and flashes BL2 + FIP |
| [ss.exe](https://github.com/fasteddy516/SimplySerial) (SimplySerial) | Lists COM ports and opens a serial console after flashing |
| [tftpd64.exe](https://github.com/PJO2/tftpd64) | (Optional) TFTP server for sysupgrade image transfer |

---

## File Layout

```
unbrick/
├── unbrick.cmd
├── mtk_uartboot.exe
├── ss.exe
├── tftpd64.exe                                        
├── mt7981-ram-...-bl2.bin               ← auto-detected
└── openwrt-mediatek-...-bl31-uboot.fip  ← auto-detected
```

---

## File Detection

The script scans its own directory using these masks:

| File | Masks (first match wins) |
|---|---|
| BL2 preloader | `*ddr3*bl2.bin`, `*ddr4*bl2.bin` |
| FIP image | `openwrt*bl31-uboot.fip`, `*.fip` |

If no file matches either mask, the script exits with an error before doing anything.

---

## Usage

1. Copy all required files into the same folder as `unbrick.cmd`
2. Connect a USB-to-UART adapter to the router's UART header (TX / RX / GND)
3. Run `unbrick.cmd`
4. Follow the prompts — choose whether to launch tftpd64, then enter your COM port number
5. Power on the router when instructed

```
======================================================================
                     ROUTER RECOVERY UTILITY
======================================================================

Launch tftpd64 before recovery? (y/n): y
Starting tftpd64...


Scanning for available COM-ports...

PORT    VID     PID     DESCRIPTION [DEVICE]
----------------------------------------------------------------------
COM1    ----    ----    Communications Port (COM1)
COM3    10C4    EA60    Silicon Labs CP210x USB to UART Bridge (COM3) [CP2102 USB to UART Bridge Controller]


Enter COM port number (e.g., 3): 3

----------------------------------------------------------------------
Selected port: COM3
Preloader    : mt7981-ram-ddr3-bl2.bin
FIP          :
openwrt-mediatek-filogic-comfast_cf-wr632ax-ubootmod-bl31-uboot.fip
----------------------------------------------------------------------

[ACTION REQUIRED]
Power on the router NOW to initiate the recovery boot sequence...

mtk_uartboot - 0.1.1
Using serial port: COM3
Handshake...

```

Once `mtk_uartboot` finishes, SimplySerial opens automatically on the same COM port so you can interact with U-Boot directly.

---

## Tested On

| Device | SoC |
|---|---|
| Comfast CF-WR632AX | MT7981B |
| CreatLentem CLT-R30B1 | MT7981B |


---

## Related Projects

- [mtk_uartboot](https://github.com/981213/mtk_uartboot)
- [SimplySerial](https://github.com/fasteddy516/SimplySerial)
- [Tftpd64](https://github.com/PJO2/tftpd64)
- [OpenWrt](https://openwrt.org)
