#
# Copyright (C) 2020 The LineageOS Project

# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)
$(call inherit-product, vendor/gapps/config.mk)

# Inherit some common CandyRoms stuff.
$(call inherit-product, vendor/candy/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
TARGET_INCLUDE_PIXEL_CHARGER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := candy_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ2A.210405.005 7181113 release-keys" \
    PRODUCT_NAME="violet"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint= google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
