# Release name
PRODUCT_RELEASE_NAME := SG304SH

LOCAL_PATH := device/SHARP/SG304SH

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := SG304SH

TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Charger
PRODUCT_PACKAGES += charger charger_res_images

include $(call all-subdir-makefiles)

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
	$(LOCAL_PATH)/recovery/root/fstab.qcom:root/fstab.qcom

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.target.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc \
    init.qcom.early_boot.sh \
    init.qcom.factory.sh \
    init.qcom.sh \
    init.qcom.usb.sh
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dt.img:dt.img \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \
    $(LOCAL_PATH)/fstab/twrp.fstab:root/etc/twrp.fstab

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := SG304SH
PRODUCT_NAME := omni_SG304SH
PRODUCT_BRAND := SG
PRODUCT_MODEL := 304SH
PRODUCT_MANUFACTURER := SHARP

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=304SH \
    ro.product.device=SG304SH
    