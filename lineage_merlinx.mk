#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/merlinx/device.mk)

# Inherit some common Project Pixelage stuff.
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
PIXELAGE_BUILD=merlinx

PRODUCT_NAME := pixelage_merlinx
PRODUCT_DEVICE := merlinx
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 9

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="merlin-user 11 RP1A.200720.011 V12.5.4.0.RJOMIXM release-keys" \
    DeviceName="merlinx"

BUILD_FINGERPRINT := Redmi/merlin/merlin:11/RP1A.200720.011/V12.5.4.0.RJOMIXM:user/release-keys
