#!/system/bin/sh

kernel_log_prop=`getprop persist.service.kernel.enable`
log_low_storage_prop=`getprop persist.service.log.lowstorage`

if test 1 -eq $kernel_log_prop
then
    if test 1 -eq $log_low_storage_prop
    then
        /system/bin/kernel_logger -f /data/logger/kernel.log -s 524288 -m 5
    else
        /system/bin/kernel_logger -f /data/logger/kernel.log -s 1048576 -m 5
    fi
fi
