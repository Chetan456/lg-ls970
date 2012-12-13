#!/system/bin/sh

prop=`getprop persist.service.kernel.enable`

if test 1 -eq $prop
then
    cat /proc/kmsg >> /data/logger/kernel.log
fi
