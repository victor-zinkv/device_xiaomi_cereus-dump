#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \

PRODUCT_PACKAGES += \
    fstab.mt6765 \
    init.project.rc \
    factory_init.rc \
    init.modem.rc \
    multi_init.rc \
    init.ago.rc \
    meta_init.rc \
    meta_init.project.rc \
    meta_init.connectivity.rc \
    factory_init.project.rc \
    meta_init.modem.rc \
    init.aee.rc \
    init.connectivity.rc \
    factory_init.connectivity.rc \
    init.sensor_1_0.rc \
    init.mt6765.rc \
    init.mt6765.usb.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 27

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/cereus/cereus-vendor.mk)
