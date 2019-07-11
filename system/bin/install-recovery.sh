#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:31421774:9817c4043b6f0f665009fcffb5740f8280edbbbf; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:29341002:cb37c5eb4c77f00c57a71746e603501067063ca6 EMMC:/dev/block/bootdevice/by-name/recovery 9817c4043b6f0f665009fcffb5740f8280edbbbf 31421774 cb37c5eb4c77f00c57a71746e603501067063ca6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
