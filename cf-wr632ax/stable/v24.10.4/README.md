Main changes between OpenWrt 24.10.3 and OpenWrt 24.10.4

Only the main changes are listed below. See changelog-24.10.4 for the full changelog.
Security fixes

    CVE-2025-62525: ltq-ptm: local privilege escalation
    CVE-2025-62526: ubusd: heap buffer overflow

Device support

    Added new devices:
        ramips: Qding QC202
        ramips: Zbtlink ZBT-WG108
    ath79: TP-Link Archer C59 v1: Fix 5 GHz Wifi
    ath79: TP-Link Archer C60 v1: Fix 5 GHz Wifi
    ipq40xx: Linksys WHW01: Improve MAC address and LED configuration
    mediatek: filogic: GL.iNet GL-MT2500/GL-MT2500A: Add support for new hardware revision
    mpc85xx: Aerohive BR200-WP: Fix flash usage
    qualcommax: ipq807x: Linksys MX4200/MX4300/MX5300/MX8500: Improve upgrade stability
    ramips: Hongdian H7920: Fix pin configuration and MAC addresses

Various fixes and improvements

    mac80211: ath10k: improve "failed to flush transmit queue" errors
    rockchip: rk3399: Fix PCIe
    kernel: ksmbd: Fix SMB access from Linux clients
    bcm53xx: Fix bootup of devices

Core components update

    Linux kernel: update from 6.6.104 to 6.6.110
    mac80211: update from 6.12.44 to 6.12.52
    odhcpd: update from 2024-05-08 to 2025-10-02
    ubus: update from 2025-07-02 to 2025-10-17
    mbedtls: update from 3.6.4 to 3.6.5
    openssl: update from 3.0.17 to 3.0.18

Upgrading to 24.10

Sysupgrade can be used to upgrade a device from 23.05 to 24.10, and configuration will be preserved in most cases.

For for upgrades inside the OpenWrt 24.10 stable series for example from a OpenWrt 24.10 release candidate Attended Sysupgrade is supported in addition which allows preserving the installed packages too.

    Sysupgrade from 22.03 to 24.10 is not officially supported.

    There is no configuration migration path for users of the ipq806x target for Qualcomm Atheros IPQ806X SoCs because it switched to DSA. You have to upgrade without saving the configuration.
    ''Image version mismatch. image 1.1 device 1.0 Please wipe config during upgrade (force required) or reinstall. Config cannot be migrated from swconfig to DSA Image check failed''

    User of the Linksys E8450 aka. Belkin RT3200 running OpenWrt 23.05 or earlier will need to run installer version v1.1.3 or later in order to reorganize the UBI layout for the 24.10 release. A detailed description is in the OpenWrt wiki. Updating without using the installer will break the device. Sysupgrade will show a warning before doing an incompatible upgrade.

    Users of the Xiaomi AX3200 aka. Redmi AX6S running OpenWrt 23.05 or earlier have to follow a special upgrade procedure described in the wiki. This will increase the flash memory available for OpenWrt. Updating without following the guide in the wiki break the device. Sysupgrade will show a warning before doing an incompatible upgrade.

    Users of Zyxel GS1900 series switches running OpenWrt 23.05 or earlier have to perform a new factory install with the initramfs image due to a changed partition layout. Sysupgrade will show a warning before doing an incompatible upgrade and is not possible.

Known issues

    LEDs for Airoha AN8855 are not yet supported. Devices like the Xiaomi AX3000T with an Airoha switch will have their switch LEDs powered off. This issue will be addressed in an upcoming OpenWrt SNAPSHOT and the OpenWrt 24.10 minor release.
    5GHz WiFi is non-functional on certain devices with ath10k chipsets. Affected models include the Phicomm K2T, TP-Link Archer C60 v2, TP-Link Archer C60 v3 and possibly others. For details, see issue #14541.

Full release notes and upgrade instructions are available at
https://openwrt.org/releases/24.10/notes-24.10.4

In particular, make sure to read the regressions and known issues before upgrading:
https://openwrt.org/releases/24.10/notes-24.10.4#known_issues

For a detailed list of all changes since 24.10.3, refer to
https://openwrt.org/releases/24.10/changelog-24.10.4

To download the 24.10.4 images, navigate to:
https://downloads.openwrt.org/releases/24.10.4/targets/
Use OpenWrt Firmware Selector to download:
https://firmware-selector.openwrt.org?version=24.10.4

As always, a big thank you goes to all our active package maintainers, testers, documenters and supporters.

Have fun!

The OpenWrt Community

To stay informed of new OpenWrt releases and security advisories, there
are new channels available:

    a low-volume mailing list for important announcements:
    https://lists.openwrt.org/mailman/listinfo/openwrt-announce

    a dedicated "announcements" section in the forum:
    https://forum.openwrt.org/c/announcements/14

    other announcement channels (such as RSS feeds) might be added in the
    future, they will be listed at https://openwrt.org/contact


