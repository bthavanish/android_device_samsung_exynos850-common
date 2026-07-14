#
# Copyright (C) 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#
# exynos850-common.mk — Shared config for Exynos 850 devices

PRODUCT_ENFORCE_VINTF_MANIFEST := true

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@7.0-impl \
    android.hardware.audio.effect@7.0-impl \
    android.hardware.audio.service \
    audio.r_submix.default \
    audio.usb.default \
    libaudioroute \
    libtinyalsa \
    libtinycompress

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.1-service

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider-service.samsung

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.4-service \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Health
PRODUCT_PACKAGES += \
    android.hardware.health-service.samsung

# Keymaster
# Samsung keymaster service requires libskeymaster4device from vendor blobs.
# Build from source is not possible without declaring the prebuilt first.
# The vendor blobs provide keymaster functionality.

# Media
PRODUCT_PACKAGES += \
    libcodec2_hidl@1.0 \
    libcodec2_vndk

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service.example

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.3-radio-service.samsung \
    android.hardware.radio.config@1.0-service \
    rild \
    libril \
    librilutils

ENABLE_VENDOR_RIL_SERVICE := true

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors-service.samsung-multihal

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb-service.samsung

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.samsung

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi-service \
    hostapd \
    wpa_supplicant

# Samsung SLSI config
$(call inherit-product, hardware/samsung_slsi-linaro/config/config.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/samsung/exynos850-common \
    hardware/samsung \
    hardware/samsung/slsi/libbt
