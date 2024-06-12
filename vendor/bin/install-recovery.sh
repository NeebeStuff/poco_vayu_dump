#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:134217728:589b88dba52d75ad740e6f346183cf49e0987068; then
  applypatch \
          --flash /vendor/etc/recovery.img \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:134217728:589b88dba52d75ad740e6f346183cf49e0987068 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
