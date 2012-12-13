timestamp="`cat /mnt/sdcard/log/.timestamp`"
exception_tags="`cat /mnt/sdcard/log/.exception_tags`"
filtering_tags="`cat /mnt/sdcard/log/.filtering_tags`"
/system/bin/logcat -v logsvc -b $1 $exception_tags $filtering_tags >> /mnt/sdcard/log/$timestamp.$1.log

