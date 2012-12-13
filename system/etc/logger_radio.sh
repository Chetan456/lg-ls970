#!/system/bin/sh

radio_log_prop=`getprop persist.service.radio.enable`
log_low_storage_prop=`getprop persist.service.log.lowstorage`

if test 1 -eq $radio_log_prop
then
    if test 1 -eq $log_low_storage_prop
    then
        /system/bin/logcat -v threadtime -b radio -f /data/logger/radio.log -n 4 -r 1024
    else
        /system/bin/logcat -v threadtime -b radio -f /data/logger/radio.log -n 4 -r 16376
    fi
fi
