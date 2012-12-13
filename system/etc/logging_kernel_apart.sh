timestamp="`cat /mnt/sdcard/log/.timestamp`"
cat /proc/kmsg >> /mnt/sdcard/log/$timestamp.kernel.log

