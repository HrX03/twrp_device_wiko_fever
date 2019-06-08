#
# Copyright (C) 2011 The Android Open Source Project
# Copyright (C) 2015-2016 The CyanogenMod Project
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

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/cdma.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_fever.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Device identifier
PRODUCT_DEVICE := fever
PRODUCT_NAME := omni_fever
PRODUCT_BRAND := wiko
PRODUCT_MODEL := Wiko l5460
PRODUCT_MANUFACTURER := WIKO
PRODUCT_RELEASE_NAME := fever

# TWRP.fstab
PRODUCT_COPY_FILES += \
    device/wiko/fever/prebuilts/kernel:kernel \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/recovery.fstab

# Time Zone data for Recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
