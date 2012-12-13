timestamp="`cat /mnt/sdcard/log/.timestamp`"
buffer="`cat /mnt/sdcard/log/.buffer`"
exception_tags="`cat /mnt/sdcard/log/.exception_tags`"
filtering_tags="`cat /mnt/sdcard/log/.filtering_tags`"
/system/bin/logcat -v logsvc $buffer $exception_tags $filtering_tags >> /mnt/sdcard/log/$timestamp.log
