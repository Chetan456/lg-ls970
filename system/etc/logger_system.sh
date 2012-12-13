#!/system/bin/sh

system_log_prop=`getprop persist.service.system.enable`
log_low_storage_prop=`getprop persist.service.log.lowstorage`

if test 1 -eq $system_log_prop
then
    if test 1 -eq $log_low_storage_prop
    then
        /system/bin/logcat -v threadtime -b system -f /data/logger/system.log -n 4 -r 512
    else
        /system/bin/logcat -v threadtime -b system -f /data/logger/system.log -n 4 -r 8192
    fi
fi
