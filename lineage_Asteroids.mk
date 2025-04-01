#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Asteroids device
$(call inherit-product, device/nothing/Asteroids/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_Asteroids
PRODUCT_DEVICE := Asteroids
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A059
PRODUCT_MANUFACTURER := Nothing

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=Asteroids \
    BuildDesc="Asteroids-user 15 AQ3A.241015.001 2503202319 release-keys" \
    BuildFingerprint="Nothing/Asteroids/Asteroids:15/AQ3A.241015.001/2503202319:user/release-keys"
