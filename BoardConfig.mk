#
# Copyright 2013 The Android Open-Source Project
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
LOCAL_PATH := device/micromax/a106

# Board
TARGET_BOARD_PLATFORM := mt6582
MTK_BOARD_PLATFORMS := mt6582
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_SMP := true
TARGET_ARCH := arm
ARCH_ARM_HAVE_NEON := true
TARGET_NO_BOOTLOADER := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT:= cortex-a7
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Storage allocations
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=943718400
BOARD_USERDATAIMAGE_PARTITION_SIZE:=2725773312
BOARD_CACHEIMAGE_PARTITION_SIZE:=132120576
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# kernel stuff
MTK_PLATFORM := mt6582
MTK_PROJECT := a106
TARGET_KERNEL_SOURCE := kernel/micromax/a106
TARGET_KERNEL_CONFIG := a106_defconfig
BOARD_KERNEL_CMDLINE :=
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
#KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
#TARGET_PREBUILT_KERNEL := device/micromax/a106/kernel
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_CUSTOM_BOOTIMG_MK := device/micromax/a106/tools/bootimg.mk

# Fstab for TWRP
#TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/root/twrp.fstab

# Fstab for building
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/root/recovery.fstab

# Deodex
WITH_DEXPREOPT := false
DISABLE_DEXPREOPT := true

# Block based ota
BLOCK_BASED_OTA := false

#ANDROID_COMPILE_WITH_JACK := false
#DEFAULT_JACK_ENABLED=false

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# OpenGL
USE_OPENGL_RENDERER := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# FM
MTK_FM_SUPPORT :=true
MTK_FM_RX_SUPPORT :=true

# MTK_WLAN_SUPPORT
BOARD_WLAN_DEVICE                := MediaTek
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# NINJA is enabled for fasted building
# Set 'false' to disable use NINJA
USE_NINJA := true

# Malloc
MALLOC_SVELTE := true

# Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true

# FRAMEWORK WITH OUT SYNC
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Use half res bootanimation to speed up first boot sequence
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Fonts
EXTENDED_FONT_FOOTPRINT := true

TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop
TARGET_HAS_EARLYSUSPEND := true

# Dual SIM
SIM_COUNT := 2

# RIL
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril/

TARGET_USERIMAGES_USE_EXT4:=true
USE_CAMERA_STUB := true
USE_MTK_CAMERA_WRAPPER := true
TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY := libcamera_parameters_mtk
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# SELinux
#BOARD_SEPOLICY_DIRS += \
#    device/micromax/a106/sepolicy

# Symbols
TARGET_LD_SHIM_LIBS := \
	/system/lib/libcam_utils.so|libshim_camera.so \
	/system/lib/librilmtk.so|libshim_ril.so \
	/system/lib/libshim_sensor.so

# Hack for build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
