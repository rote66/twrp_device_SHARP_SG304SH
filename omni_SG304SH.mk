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
    