# Inherit from t310-common
$(call inherit-product, device/retroid/t310-common/t310.mk)

# Vendor
$(call inherit-product-if-exists, vendor/retroid/pocket2plus/pocket2plus-vendor.mk)

# Vendor apps
$(call inherit-product-if-exists, vendor/retroid/apps/pocket2plus-apps.mk)

# Fix symlinks
$(call inherit-product, $(LOCAL_PATH)/fixsymlinks/fixsymlinks.mk)

# Vendor Prop
include $(LOCAL_PATH)/vendor_prop.mk

# MicroSD boot files
PRODUCT_COPY_FILES += \
	device/retroid/pocket2plus/microsdboot/device-resources/deviceinfo:root/device-resources/deviceinfo

# Recovery files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/ueventd.ums312_2h10.rc:root/ueventd.ums312_2h10.rc \
    $(LOCAL_PATH)/recovery/init.recovery.ums312_2h10.rc:root/init.recovery.ums312_2h10.rc \

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay/aosp

