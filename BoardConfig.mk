#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common msm8937-common
include device/xiaomi/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/santoni

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_santoni
TARGET_RECOVERY_DEVICE_MODULES := libinit_santoni

# Kernel
TARGET_KERNEL_CONFIG := mi8937_defconfig

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/sys/dev/dt2w"

# Security patch level
VENDOR_SECURITY_PATCH := 2018-10-01

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/biometrics/sepolicy

# Inherit from the proprietary version
include vendor/xiaomi/santoni/BoardConfigVendor.mk
