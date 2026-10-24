#
# Copyright (C) 2020-2021 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from gts3llte device
$(call inherit-product, device/samsung/gts3llte/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

# The 3.18 kernel has neither userfaultfd nor MREMAP_DONTUNMAP. Set this in
# the final product, after the inherited ART defaults, so they cannot replace
# the device choice with Android 17's default of true.
PRODUCT_ENABLE_UFFD_GC := false

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gts3llte
PRODUCT_NAME := lineage_gts3llte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T825
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_NAME := gts3llte

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=gts3llte \
    BuildDesc="gts3lltekx-user 9 PPR1.180610.011 T825N0KOU3CTD1 release-keys" \
    BuildFingerprint=samsung/gts3lltekx/gts3lltekx:9/PPR1.180610.011/T825N0KOU3CTD1:user/release-keys
