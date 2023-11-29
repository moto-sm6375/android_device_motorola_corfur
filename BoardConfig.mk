#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/corfur

# Inherit from motorola sm6375-common
include device/motorola/sm6375-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := corfur

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.hab.product=corfur
KERNEL_FRAGMENT_CONFIG := vendor/aospa_corfur.config

# Partitions - Dynamic
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 7251951616
BOARD_SUPER_PARTITION_SIZE := 14512291840

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 90

# inherit from the proprietary version
include vendor/motorola/corfur/BoardConfigVendor.mk
