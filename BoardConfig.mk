#
# Copyright (C) 2019 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/motorola/nora

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
#TARGET_CPU_VARIANT := cortex-a53

# Platform
TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno505

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8937
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78B0000 vmalloc=400M
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_ARCH := arm
TARGET_PREBUILT_DTB := $(LOCAL_PATH)/prebuilt/dt.img
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

# Partitions
#BOARD_FLASH_BLOCK_SIZE               := 131072		# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE                := 0x40000
BOARD_BOOTIMAGE_PARTITION_SIZE        := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE    := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE      := 2355101696
BOARD_USERDATAIMAGE_PARTITION_SIZE    := 11576279040
BOARD_VENDORIMAGE_PARTITION_SIZE      := 419430400	#   409600 * 1024 mmcblk0p53
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE    := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_COPY_OUT_VENDOR := vendor
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab
#BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
TW_IGNORE_MISC_WIPE_DATA := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TWRP_INCLUDE_LOGCAT := true
TW_USE_TOOLBOX := true


# Encryption
TW_INCLUDE_CRYPTO := true
TARGET_HW_DISK_ENCRYPTION := true
TARGET_PROVIDES_KEYMASTER := true

TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
#TW_FORCE_CPUINFO_FOR_DEVICE_ID := true
#TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi
DEVICE_RESOLUTION := 720x1440
DEVICE_SCREEN_WIDTH := 720
DEVICE_SCREEN_HEIGHT := 1440

# Init
#TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
