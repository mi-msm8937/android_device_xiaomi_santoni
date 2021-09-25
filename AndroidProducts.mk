#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_santoni.mk

COMMON_LUNCH_CHOICES := \
    lineage_santoni-user \
    lineage_santoni-userdebug \
    lineage_santoni-eng

PRODUCT_MAKEFILES += \
    $(LOCAL_DIR)/cherish_santoni.mk

COMMON_LUNCH_CHOICES += \
    cherish_santoni-user \
    cherish_santoni-userdebug \
    cherish_santoni-eng
