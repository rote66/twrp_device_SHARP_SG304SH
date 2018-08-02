#TWRP
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/fstab/twrp.fstab:recovery/root/etc/twrp.fstab 

#Kernel
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/dt.img:dt.img \
    $(DEVICE_PATH)/prebuilt/kernel:kernel 
