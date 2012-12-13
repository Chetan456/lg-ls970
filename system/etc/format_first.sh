temp_file=/tmp_part

/system/bin/dd if=/dev/block/platform/msm_sdcc.1/by-name/tombstones of=$temp_file bs=512 count=1
format_magic=`/system/bin/cat $temp_file`
echo [[$format_magic]]
/system/bin/rm $temp_file

case "$format_magic" in
    "TaMeGlRoF_cIgAm")
    echo [[[[[ Format Started ]]]]]]]
#/sbin/make_ext4fs /dev/block/platform/msm_sdcc.1/by-name/factory
#/sbin/make_ext4fs /dev/block/platform/msm_sdcc.1/by-name/sns
#/sbin/make_ext4fs /dev/block/platform/msm_sdcc.1/by-name/mpt
#/sbin/make_ext4fs /dev/block/platform/msm_sdcc.1/by-name/mmbi
#/sbin/make_ext4fs /dev/block/platform/msm_sdcc.1/by-name/ve
#/sbin/make_ext4fs /dev/block/platform/msm_sdcc.1/by-name/carrier
    # append preload app for KDDI
    if /system/bin/ls /system/etc/preload_cp.sh; then
      echo [[[[[ Nothing do that when KDDI ]]]]]]]
    else
      # tombstones partition must be located at here lastest
      /sbin/make_ext4fs /dev/block/platform/msm_sdcc.1/by-name/tombstones
    fi
 ;; 
    * )
    echo [[[[[ No Need of Format ]]]]]]]
esac
