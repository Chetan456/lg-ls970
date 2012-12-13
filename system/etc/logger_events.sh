#!/system/bin/sh

events_log_prop=`getprop persist.service.events.enable`
log_low_storage_prop=`getprop persist.service.log.lowstorage`

if test 1 -eq $events_log_prop
then
    if test 1 -eq $log_low_storage_prop
    then
        /system/bin/logcat -v threadtime -b events -f /data/logger/events.log -n 4 -r 512
    else
        /system/bin/logcat -v threadtime -b events -f /data/logger/events.log -n 4 -r 8192
    fi
fi
