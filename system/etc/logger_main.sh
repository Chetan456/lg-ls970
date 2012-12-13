#!/system/bin/sh

main_log_prop=`getprop persist.service.main.enable`
log_low_storage_prop=`getprop persist.service.log.lowstorage`

if test 1 -eq $main_log_prop
then
    if test 1 -eq $log_low_storage_prop
    then
        /system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 4 -r 1024
    else
        /system/bin/logcat -v threadtime -b main -f /data/logger/main.log -n 4 -r 8192
    fi
fi
