#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from k-touch i9 device
$(call inherit-product, device/ktouch/i9/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_i9
PRODUCT_DEVICE := i9
PRODUCT_BRAND := K-touch
PRODUCT_MODEL := K-touch i9
PRODUCT_MANUFACTURER := K-touch

# Product characteristics
PRODUCT_AAPT_CONFIG := mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 340

# Build info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vndk.version=27 \
    ro.config.avoid_gfx_accel=true \

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-ktouch
