#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
TARGET_SUPPORTS_OMX_SERVICE := false

# Inherit some common Device stuff.
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

# Device Stuff
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := yaap_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2312DRA50G

PRODUCT_SYSTEM_NAME := garnet_global
PRODUCT_SYSTEM_DEVICE := garnet

# PRODUCT_BUILD_PROP_OVERRIDES += \
#    BuildDesc="garnet_global-user 15 AQ3A.240912.001 OS2.0.2.0.VNRMIXM release-keys" \
#    BuildFingerprint=Redmi/garnet_global/garnet:15/AQ3A.240912.001/OS2.0.2.0.VNRMIXM:user/release-keys \
#    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
#    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Redmi/garnet_global/garnet:14/UKQ1.231003.002/V816.0.15.0.UNRMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
