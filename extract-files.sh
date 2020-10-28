#!/bin/bash
#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

# Required!
export DEVICE=santoni
export DEVICE_COMMON=msm8937-common
export VENDOR=xiaomi

export DEVICE_BRINGUP_YEAR=2017

# Hax for cam configs
CAMERA2_SENSOR_MODULES="${LINEAGE_ROOT}"/vendor/"${VENDOR}"/"${DEVICE}"/proprietary/vendor/lib/libmmcamera2_sensor_modules.so
sed -i "s|/system/etc/camera/|/vendor/etc/camera/|g" "${CAMERA2_SENSOR_MODULES}"

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
