#
# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit more device specific configurations
$(call inherit-product, device/samsung/n7000/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_MODEL := GT-N7000
PRODUCT_BRAND := samsung
PRODUCT_NAME := omni_n7000
PRODUCT_DEVICE := n7000
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=GT-N7000 \
    TARGET_DEVICE=GT-N7000 \
    PRIVATE_BUILD_DESC="GT-N7000-user 4.1.2 JZO54K N7000XXLT5 release-keys" \
    BUILD_FINGERPRINT="samsung/GT-N7000/GT-N7000:4.1.2/JZO54K/N7000XXLT5:user/release-keys"
