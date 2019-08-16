#
# Copyright (C) 2017-2018 The LineageOS Project
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

DEVICE_PATH := device/samsung/gta2xl

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true


TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506
TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive console=null androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_KERNEL_SOURCE := kernel/samsung/msm8953
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := gta2xllte_eur_open_defconfig
KERNEL_TOOLCHAIN := $(PWD)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-androidkernel-

# ANT
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Audio
BOARD_USES_GENERIC_AUDIO := true
TARGET_USES_QCOM_MM_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := SDM450
TARGET_NO_BOOTLOADER := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_TS_MAKEUP := true
TARGET_USES_QTI_CAMERA_DEVICE := true
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true
TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY := libcamera_parameters_ext

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE   := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# CNE / DPM
BOARD_USES_QCNE := true

# Cpusets
ENABLE_CPUSETS := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_HW_KEYMASTER_V03 := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TARGET_SWV8_DISK_ENCRYPTION := true
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/cryptfs_hw

# Display
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

TARGET_USES_ION := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_OVERLAY := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
USE_OPENGL_RENDERER := true

# DRM
TARGET_ENABLE_MEDIADRM := true

# Filesystem
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

#FM
BOARD_HAVE_QCOM_FM := true
AUDIO_FEATURE_ENABLED_FM := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/compatibility_matrix.xml

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8953
TARGET_RECOVERY_DEVICE_MODULES := libinit_msm8953

# Malloc
MALLOC_SVELTE := true

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3241193472
BOARD_PERSISTIMAGE_PARTITION_SIZE := 28144000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_USES_MKE2FS := true
BOARD_CACHEIMAGE_PARTITION_SIZE := 396744000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2485563600 # 25765059584 - 16384
BOARD_VENDORIMAGE_PARTITION_SIZE := 487878656
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

BOARD_ROOT_EXTRA_SYMLINKS := \
    /mnt/vendor/persist:/persist \
    /vendor/dsp:/dsp \
    /vendor/bt_firmware:/bt_firmware \
    /vendor/firmware_mnt:/firmware


# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# Power
TARGET_HAS_NO_WLAN_STATS := true
TARGET_USES_INTERACTION_BOOST := true

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
TARGET_USE_SDCLANG := true

# RIL
BOARD_PROVIDES_LIBRIL := true
PROTOBUF_SUPPORTED := true
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.qcom

# Vendor security Patch
VENDOR_SECURITY_PATCH := 2019-02-01

# SELinux
#include device/qcom/sepolicy/sepolicy.mk
#BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy
BOARD_SEPOLICY_VERS := 28.0

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BOARD_VNDK_VERSION := current
PRODUCT_VENDOR_MOVE_ENABLED := true

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_HIDL_FEATURE_AWARE := true

# Inherit from the proprietary version
-include vendor/samsung/gta2xl/BoardConfigVendor.mk
