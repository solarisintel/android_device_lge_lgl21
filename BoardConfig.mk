#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_SPECIFIC_HEADER_PATH := device/lge/geehdc/include
BOARD_KERNEL_CMDLINE := vmalloc=600M console=ttyHSL0,115200,n8 lpj=67677 user_debug=31 msm_rtb.filter=0x0 ehci-hcd.park=3 coresight-etm.boot_enable=0 androidboot.hardware=geehdc
TARGET_KERNEL_SOURCE := kernel/lge/kbc_geehdc_kddi
TARGET_KERNEL_CONFIG := cyanogenmod_geekdi_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := device/lge/lgl21/ramdisk/fstab.geehdc
RECOVERY_FSTAB_VERSION := 2

# inherit from lgl21-common
include device/lge/lgl21-common/BoardConfigCommon.mk

# assert
TARGET_OTA_ASSERT_DEVICE := geehdc,geehdc_kddi

# board-info
TARGET_BOARD_INFO_FILE := device/lge/lgl21/board-info.txt

# inherit from the proprietary version
include vendor/lge/lgl21/BoardConfigVendor.mk


