LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_BOARD_PLATFORM),exynos850)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
