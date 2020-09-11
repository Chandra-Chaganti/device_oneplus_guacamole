#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from oneplus sm8150-common
-include device/oneplus/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/guacamole

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 560

# Fingerprint
SOONG_CONFIG_ONEPLUS_MSMNILE_FOD_POS_X = 610
SOONG_CONFIG_ONEPLUS_MSMNILE_FOD_POS_Y = 2618
SOONG_CONFIG_ONEPLUS_MSMNILE_FOD_SIZE = 220

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3640655872
BOARD_USERDATAIMAGE_PARTITION_SIZE := 243561590784
BOARD_DTBOIMG_PARTITION_SIZE := 16777216
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# inherit from the proprietary version
-include vendor/oneplus/guacamole/BoardConfigVendor.mk
