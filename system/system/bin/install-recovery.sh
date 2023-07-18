#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:51071bbb98496d14967a2bf297148a045de8301c; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:67108864:6c1833059498ab867534dcd82f89fc0344d13f52 EMMC:/dev/block/platform/bootdevice/by-name/recovery 51071bbb98496d14967a2bf297148a045de8301c 67108864 6c1833059498ab867534dcd82f89fc0344d13f52:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
