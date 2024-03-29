# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from vince_global device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := vince_global
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_vince_global
PRODUCT_MODEL := Redmi 5 Plus

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := vince_global
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="vince-user 8.1.0 OPM1.171019.019 V11.0.2.0.OEGMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := xiaomi/vince/vince:8.1.0/OPM1.171019.019/V11.0.2.0.OEGMIXM:user/release-keys
