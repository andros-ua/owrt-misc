#!/bin/sh

#==================================================================
# COMFAST CF-WR632AX Factory Patch
#==================================================================
# Minimal 55-byte calibration patch
# MAC and device-specific bytes are NOT touched.
# Usage: sh patch_factory.sh <path-to-factory>
#==================================================================

F="${1:-factory}"
[ -e "$F" ] || { echo "usage: $0 <factory>"; exit 1; }

echo -e "Apply \e[0;31mA4\e[0m to $F at position \e[0;32m588\e[0m" && printf '\xa4' | dd of="$F" bs=1 seek=588  count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mA6\e[0m to $F at position \e[0;32m589\e[0m" && printf '\xa6' | dd of="$F" bs=1 seek=589  count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mA6\e[0m to $F at position \e[0;32m590\e[0m" && printf '\xa6' | dd of="$F" bs=1 seek=590  count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mA6\e[0m to $F at position \e[0;32m591\e[0m" && printf '\xa6' | dd of="$F" bs=1 seek=591  count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mA3\e[0m to $F at position \e[0;32m592\e[0m" && printf '\xa3' | dd of="$F" bs=1 seek=592  count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m91\e[0m to $F at position \e[0;32m593\e[0m" && printf '\x91' | dd of="$F" bs=1 seek=593  count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m91\e[0m to $F at position \e[0;32m595\e[0m" && printf '\x91' | dd of="$F" bs=1 seek=595  count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m91\e[0m to $F at position \e[0;32m597\e[0m" && printf '\x91' | dd of="$F" bs=1 seek=597  count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m91\e[0m to $F at position \e[0;32m599\e[0m" && printf '\x91' | dd of="$F" bs=1 seek=599  count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m89\e[0m to $F at position \e[0;32m601\e[0m" && printf '\x89' | dd of="$F" bs=1 seek=601  count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m0C\e[0m to $F at position \e[0;32m624\e[0m" && printf '\x0c' | dd of="$F" bs=1 seek=624  count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC2\e[0m to $F at position \e[0;32m1173\e[0m" && printf '\xc2' | dd of="$F" bs=1 seek=1173 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC2\e[0m to $F at position \e[0;32m1174\e[0m" && printf '\xc2' | dd of="$F" bs=1 seek=1174 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC2\e[0m to $F at position \e[0;32m1175\e[0m" && printf '\xc2' | dd of="$F" bs=1 seek=1175 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC0\e[0m to $F at position \e[0;32m1176\e[0m" && printf '\xc0' | dd of="$F" bs=1 seek=1176 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC1\e[0m to $F at position \e[0;32m1177\e[0m" && printf '\xc1' | dd of="$F" bs=1 seek=1177 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC1\e[0m to $F at position \e[0;32m1178\e[0m" && printf '\xc1' | dd of="$F" bs=1 seek=1178 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m81\e[0m to $F at position \e[0;32m1185\e[0m" && printf '\x81' | dd of="$F" bs=1 seek=1185 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m81\e[0m to $F at position \e[0;32m1186\e[0m" && printf '\x81' | dd of="$F" bs=1 seek=1186 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m81\e[0m to $F at position \e[0;32m1187\e[0m" && printf '\x81' | dd of="$F" bs=1 seek=1187 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m81\e[0m to $F at position \e[0;32m1188\e[0m" && printf '\x81' | dd of="$F" bs=1 seek=1188 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m81\e[0m to $F at position \e[0;32m1189\e[0m" && printf '\x81' | dd of="$F" bs=1 seek=1189 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC1\e[0m to $F at position \e[0;32m1190\e[0m" && printf '\xc1' | dd of="$F" bs=1 seek=1190 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m81\e[0m to $F at position \e[0;32m1191\e[0m" && printf '\x81' | dd of="$F" bs=1 seek=1191 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m81\e[0m to $F at position \e[0;32m1192\e[0m" && printf '\x81' | dd of="$F" bs=1 seek=1192 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC1\e[0m to $F at position \e[0;32m1193\e[0m" && printf '\xc1' | dd of="$F" bs=1 seek=1193 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC1\e[0m to $F at position \e[0;32m1194\e[0m" && printf '\xc1' | dd of="$F" bs=1 seek=1194 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC1\e[0m to $F at position \e[0;32m1195\e[0m" && printf '\xc1' | dd of="$F" bs=1 seek=1195 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m81\e[0m to $F at position \e[0;32m1196\e[0m" && printf '\x81' | dd of="$F" bs=1 seek=1196 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC0\e[0m to $F at position \e[0;32m1197\e[0m" && printf '\xc0' | dd of="$F" bs=1 seek=1197 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC0\e[0m to $F at position \e[0;32m1198\e[0m" && printf '\xc0' | dd of="$F" bs=1 seek=1198 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC1\e[0m to $F at position \e[0;32m1199\e[0m" && printf '\xc1' | dd of="$F" bs=1 seek=1199 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC1\e[0m to $F at position \e[0;32m1200\e[0m" && printf '\xc1' | dd of="$F" bs=1 seek=1200 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC1\e[0m to $F at position \e[0;32m1201\e[0m" && printf '\xc1' | dd of="$F" bs=1 seek=1201 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC1\e[0m to $F at position \e[0;32m1202\e[0m" && printf '\xc1' | dd of="$F" bs=1 seek=1202 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC1\e[0m to $F at position \e[0;32m1203\e[0m" && printf '\xc1' | dd of="$F" bs=1 seek=1203 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC1\e[0m to $F at position \e[0;32m1204\e[0m" && printf '\xc1' | dd of="$F" bs=1 seek=1204 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m83\e[0m to $F at position \e[0;32m1205\e[0m" && printf '\x83' | dd of="$F" bs=1 seek=1205 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m83\e[0m to $F at position \e[0;32m1206\e[0m" && printf '\x83' | dd of="$F" bs=1 seek=1206 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m83\e[0m to $F at position \e[0;32m1207\e[0m" && printf '\x83' | dd of="$F" bs=1 seek=1207 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m83\e[0m to $F at position \e[0;32m1208\e[0m" && printf '\x83' | dd of="$F" bs=1 seek=1208 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m83\e[0m to $F at position \e[0;32m1209\e[0m" && printf '\x83' | dd of="$F" bs=1 seek=1209 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m83\e[0m to $F at position \e[0;32m1210\e[0m" && printf '\x83' | dd of="$F" bs=1 seek=1210 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m83\e[0m to $F at position \e[0;32m1211\e[0m" && printf '\x83' | dd of="$F" bs=1 seek=1211 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m83\e[0m to $F at position \e[0;32m1212\e[0m" && printf '\x83' | dd of="$F" bs=1 seek=1212 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m81\e[0m to $F at position \e[0;32m1213\e[0m" && printf '\x81' | dd of="$F" bs=1 seek=1213 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m81\e[0m to $F at position \e[0;32m1214\e[0m" && printf '\x81' | dd of="$F" bs=1 seek=1214 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m80\e[0m to $F at position \e[0;32m1215\e[0m" && printf '\x80' | dd of="$F" bs=1 seek=1215 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mB8\e[0m to $F at position \e[0;32m2449\e[0m" && printf '\xb8' | dd of="$F" bs=1 seek=2449 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mB8\e[0m to $F at position \e[0;32m2453\e[0m" && printf '\xb8' | dd of="$F" bs=1 seek=2453 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mCA\e[0m to $F at position \e[0;32m2457\e[0m" && printf '\xca' | dd of="$F" bs=1 seek=2457 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m01\e[0m to $F at position \e[0;32m2464\e[0m" && printf '\x01' | dd of="$F" bs=1 seek=2464 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mC4\e[0m to $F at position \e[0;32m2470\e[0m" && printf '\xc4' | dd of="$F" bs=1 seek=2470 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31mBB\e[0m to $F at position \e[0;32m2472\e[0m" && printf '\xbb' | dd of="$F" bs=1 seek=2472 count=1 conv=notrunc 2>/dev/null \
&& echo -e "Apply \e[0;31m87\e[0m to $F at position \e[0;32m2474\e[0m" && printf '\x87' | dd of="$F" bs=1 seek=2474 count=1 conv=notrunc 2>/dev/null \
&& echo "Patch applied: 55 bytes" \
|| echo "FAILED"
