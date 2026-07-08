#
# Copyright (C) 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#
# exynos850-common.mk — Shared config for Exynos 850 devices

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@7.0-impl \
    android.hardware.audio.effect@7.0-impl \
    android.hardware.audio.service \
    audio.primary.exynos850 \
    audio.r_submix.default \
    audio.usb.default \
    libaudioroute \
    libtinyalsa \
    libtinycompress

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.1-service.samsung

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.6-service_64

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.4-service \
    android.hardware.graphics.mapper@4.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    gralloc.exynos850 \
    hwcomposer.exynos850 \
    libdisplaycolor

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.4-service.clearkey

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1-service.samsung

# Media
PRODUCT_PACKAGES += \
    libcodec2_hidl@1.0 \
    libcodec2_vndk

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service.samsung

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.6-service.samsung \
    android.hardware.radio.config@1.3-service \
    rild \
    libril \
    librilutils

ENABLE_VENDOR_RIL_SERVICE := true

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.1-service.samsung-multihal

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.3-service.samsung

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.samsung

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.6-service \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/samsung/exynos850-common \
    hardware/samsung \
    hardware/samsung/slsi/libbt \
    hardware/samsung/slsi/libhwjpeg
