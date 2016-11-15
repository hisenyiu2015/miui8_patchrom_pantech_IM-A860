#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11677696 2e6d67b4f67417c468ec5cced711ce01b21e64e3 8982528 ee1d5706da98032130f93984a267d2b93412af60
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:11677696:2e6d67b4f67417c468ec5cced711ce01b21e64e3; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8982528:ee1d5706da98032130f93984a267d2b93412af60 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 2e6d67b4f67417c468ec5cced711ce01b21e64e3 11677696 ee1d5706da98032130f93984a267d2b93412af60:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
