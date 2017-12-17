# device rootdir
PRODUCT_COPY_FILES += \
    #$(DEVICE_PATH)/rootdir/root/fstab.qcom:root/fstab.qcom \
    $(DEVICE_PATH)/rootdir/root/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(DEVICE_PATH)/rootdir/root/init.qcom.factory.sh:root/init.qcom.factory.sh \
    $(DEVICE_PATH)/rootdir/root/init.qcom.rc:root/init.qcom.rc \
    $(DEVICE_PATH)/rootdir/root/init.qcom.sh:root/init.qcom.sh \
    $(DEVICE_PATH)/rootdir/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(DEVICE_PATH)/rootdir/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(DEVICE_PATH)/rootdir/root/init.target.rc:root/init.target.rc \
    #$(DEVICE_PATH)/rootdir/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(DEVICE_PATH)/rootdir/root/ueventd.rc:root/ueventd.rc \
    $(DEVICE_PATH)/rootdir/etc/init.qcom.ssr.sh:etc/init.qcom.ssr.sh

#TWRP
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/fstab/twrp.fstab:recovery/root/etc/twrp.fstab 

#Recovery
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(DEVICE_PATH)/recovery/root/fstab.qcom:root/fstab.qcom \
    $(DEVICE_PATH)/recovery/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc

#Kernel
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/dt.img:dt.img \
    $(DEVICE_PATH)/prebuilt/kernel:kernel 
