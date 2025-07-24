#!/bin/sh
# Author: Logic (https://forum.openwrt.org/u/logical)
# github: @resentment-industries

# Paths
IMG=openwrt-mediatek-filogic-creatlentem_clt-r30b1-squashfs-sysupgrade.bin
OUT=staged_openwrt_upgrade.bin
WORKDIR=$(mktemp -d)

# Known-good metadata (adjust if your device differs)
cat <<EOF > "$WORKDIR/tmp_fw_info"
"FW_VER" "0.0.0.2"
"REQ_VER" "0.0.0.1"
"HW_ID" "36b0d8b1ee52c282284e2c758717f559"
"48ed5d2db39237d7ae5e829b17581629" "PRODUCT_ID"
EOF

cat <<EOF > "$WORKDIR/tmp_ow_info"
"DG_VER" "DXG21"
"AU" "RETAIL_REGION"
EOF

# Required placeholders for BL2 and FIP (leave empty or dummy data)
touch "$WORKDIR/tmp_bl2"
touch "$WORKDIR/tmp_fip"

# Add OpenWRT image as firmware blob
cp "$IMG" "$WORKDIR/tmp_firmware"

# Package all files into a tarball
tar -cvf "$OUT" -C "$WORKDIR" \
  tmp_fw_info tmp_ow_info tmp_bl2 tmp_fip tmp_firmware

# Clean up
rm -r "$WORKDIR"

echo "Staged upgrade package created at: $OUT"
