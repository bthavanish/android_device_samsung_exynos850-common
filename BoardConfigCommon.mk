#
# Copyright (C) 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#
# BoardConfigCommon.mk — Samsung Exynos 850 (s5e3830)

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a55

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# The Exynos 850 is a 64-bit SoC and the stock vendor image supplies both
# arm64 and 32-bit vendor libraries.  Android 15 no longer infers this from
# TARGET_ARCH, so declare the supported application ABIs explicitly.
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_SUPPORTS_32_BIT_APPS := true

# Platform
TARGET_BOARD_PLATFORM := exynos850
TARGET_BOOTLOADER_BOARD_NAME := exynos850
TARGET_NO_BOOTLOADER := true

# Kernel common
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_CLANG_COMPILE := false

# Boot image common
BOARD_BOOTIMG_HEADER_VERSION := 0
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# Dynamic partitions
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product odm

# Filesystems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Filesystem types
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

# ODM partition
BOARD_ODMIMAGE_PARTITION_SIZE := 33554432

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# The proprietary vendor image comes from Android 13 (VNDK 33).  Declaring
# this enables the Treble compatibility checks and gives vendor modules the
# correct ABI surface instead of treating this as a legacy non-Treble device.
BOARD_VNDK_VERSION := 33

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += device/samsung/exynos850-common/sepolicy/vendor
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += device/samsung/exynos850-common/sepolicy/public
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += device/samsung/exynos850-common/sepolicy/private

# Wi-Fi (Samsung SLSI)
BOARD_WLAN_DEVICE := slsi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_slsi
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_slsi
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Bluetooth (Samsung Exynos BT)
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/exynos850-common/include

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_FSTAB := device/samsung/$(TARGET_DEVICE)/rootdir/etc/fstab.exynos850
