# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

-include device/google/bonito/device-lineage.mk

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bliss_bonito
PRODUCT_MODEL := Pixel 3a XL
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bonito \
    PRIVATE_BUILD_DESC="bonito-user 11 RQ3A.210705.001 7380771 release-keys"

BUILD_FINGERPRINT := google/bonito/bonito:11/RQ3A.210705.001/7380771:user/release-keys

$(call inherit-product, vendor/google/bonito/bonito-vendor.mk)
