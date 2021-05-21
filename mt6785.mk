#
# Copyright (C) 2020 Android Open Source Project
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

COMMON_PATH := device/realme/mt6785-common

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Call proprietary blob setup
$(call inherit-product, vendor/realme/mt6785-common/mt6785-common-vendor.mk)

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 29

# VNDK
PRODUCT_EXTRA_VNDK_VERSIONS := 29

# Dynamic Partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Audio
TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_PACKAGES += \
    audio.a2dp.default

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_EXTRA_VNDK_VERSIONS)/etc/audio_policy_configuration.xml

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/etc/fstab.mt6785:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6785

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.realme_mt6785

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhwbinder

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/vendor_override_manifest.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_EXTRA_VNDK_VERSIONS)/etc/vintf/manifest/vendor_override_manifest.xml

# ImsInit hack
PRODUCT_PACKAGES += \
    ImsInit

# Init
PRODUCT_PACKAGES += \
    init.mt6785.rc \
    fstab.mt6785

# Keylayouts
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/keylayout/touchpanel.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/touchpanel.kl

# KPOC
PRODUCT_PACKAGES += \
    libsuspend \
    android.hardware.health@2.0

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.realme_mt6785

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.gsma.services.nfc  \
    NfcNci \
    SecureElement \
    Tag

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(COMMON_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.controls.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.controls.xml \
    $(COMMON_PATH)/permissions/privapp-permissions-mediatek.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mediatek.xml \
    $(COMMON_PATH)/permissions/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml

# Properties
-include $(COMMON_PATH)/properties.mk
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.mt6785.rc

# RcsService
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager \
    PresencePolling \
    RcsService

# Screen density
PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(COMMON_PATH)

# Symbols
PRODUCT_PACKAGES += \
    libshim_showlogo

# Telephony Jars
PRODUCT_BOOT_JARS += \
    mediatek-common \
    mediatek-framework \
    mediatek-ims-base \
    mediatek-ims-common \
    mediatek-telecom-common \
    mediatek-telephony-base \
    mediatek-telephony-common

# Vendor Services - DISABLED
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/placeholder:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_EXTRA_VNDK_VERSIONS)/etc/init/vendor.oppo.hardware.biometrics.face@1.0-service.rc

# Wi-Fi
PRODUCT_PACKAGES += \
    TetheringConfigOverlay \
    WifiOverlay
