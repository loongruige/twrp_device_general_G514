#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from G514 device
$(call inherit-product, device/general/G514/device.mk)

PRODUCT_DEVICE := G514
PRODUCT_NAME := twrp_G514
PRODUCT_BRAND := GM
PRODUCT_MODEL := G514
PRODUCT_MANUFACTURER := general

PRODUCT_GMS_CLIENTID_BASE := android-general

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="G515-user 12 SP1A.210812.016 1701915304 release-keys"

BUILD_FINGERPRINT := GM/G515/G514:13/TP1A.220624.014/1701915304:user/release-keys
