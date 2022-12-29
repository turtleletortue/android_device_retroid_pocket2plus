DEVICE_PATH := device/retroid/pocket2plus

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Board name
TARGET_BOOTLOADER_BOARD_NAME := ums312_2h10
TARGET_BOARD_PLATFORM := ums312

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_SOURCE := kernel/retroid/pocket2plus
#TARGET_KERNEL_CONFIG := pocket2plus_defconfig
BOARD_KERNEL_IMAGE_NAME := Image
# Prebuilt 2plus kernel
TARGET_PREBUILT_KERNEL := device/retroid/pocket2plus/prebuilt/kernel

# Recovery as boot
BOARD_BOOTIMAGE_PARTITION_SIZE := 36700160
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3670016000
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 
BOARD_VENDORIMAGE_PARTITION_SIZE := 2097152000
BOARD_CACHEIMAGE_PARTITION_SIZE := 283115520
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_SUPER_PARTITION_SIZE := 6446645248

# File system types
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

#BOARD_BUILD_SYSTEM_ROOT_IMAGE := false

# Extra folders in root
BOARD_ROOT_EXTRA_FOLDERS := productinfo

# Kernel and recoveryimage generation
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS += --base 0x00000000
BOARD_MKBOOTIMG_ARGS += --pagesize 2048
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x05400000
BOARD_MKBOOTIMG_ARGS += --tags_offset 0x00000100
BOARD_MKBOOTIMG_ARGS += --kernel_offset 0x00008000
BOARD_MKBOOTIMG_ARGS += --second_offset 0x00f00000
BOARD_MKBOOTIMG_ARGS += --header_version 1
BOARD_MKBOOTIMG_ARGS += --cmdline "console=ttyS1,115200n8 buildvariant=user androidboot.selinux=permissive enforcing=0"

# Exfat
TARGET_EXFAT_DRIVER := exfat

# Brightness
TW_BRIGHTNESS_PATH := /sys/class/backlight/sprd_backlight/brightness
BACKLIGHT_PATH := /sys/class/backlight/sprd_backlight/brightness

# Charging
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Recovery fstab
TARGET_RECOVERY_FSTAB := device/retroid/pocket2plus/recovery/recovery.fstab
BOARD_SUPPRESS_EMMC_WIPE := true

# Bootanimation generation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 640

# Use MKE2FS
TARGET_USES_MKE2FS := true

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB :=
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB :=
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/retroid/pocket2plus/bluetooth

# Graphics
TARGET_USES_HWC2 := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BOARD_VNDK_VERSION := current

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/configs/compatibility_matrix.xml

# System prop
TARGET_SYSTEM_PROP += device/retroid/pocket2plus/system.prop

# Vendor prop
#TARGET_VENDOR_PROP += device/retroid/pocket2plus/vendor.prop

USE_XML_AUDIO_POLICY_CONF := 1

# Vendor Security Patch
VENDOR_SECURITY_PATCH := 2020-01-05

# Lun file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.gs6/lun.%d/file

# Recovery Graphics
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Sepolicy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy
SELINUX_IGNORE_NEVERALLOWS := true

# Ignore overriding commands errors
BUILD_BROKEN_DUP_RULES := true

