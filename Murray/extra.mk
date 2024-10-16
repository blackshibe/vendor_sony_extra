#
# Copyright (C) 2024 XperiaLabs Project
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

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/extra/Murray

# Flags
TARGET_SHIPS_SONY_FRAMEWORK ?= false
TARGET_SHIPS_SONY_APPS ?= false
TARGET_SHIPS_SOUND_ENHANCEMENTS ?= false
TARGET_SUPPORTS_GAME_CONTROLLERS ?= false
TARGET_SHIPS_XPERIA_LWP ?= false
TARGET_SHIPS_XPERIA_LWP_NEWEST ?= false

# Sony Framework
ifeq ($(TARGET_SHIPS_SONY_FRAMEWORK),true)
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/sony/extra/Common/framework/system/,$(TARGET_COPY_OUT_SYSTEM)/) \
    $(call find-copy-subdir-files,*,vendor/sony/extra/Common/framework/system_ext/,$(TARGET_COPY_OUT_SYSTEM_EXT)/) \
    $(call find-copy-subdir-files,*,vendor/sony/extra/Common/framework/product/,$(TARGET_COPY_OUT_PRODUCT)/)
endif

# Sony Apps
ifeq ($(TARGET_SHIPS_SONY_APPS),true)
    $(call inherit-product, vendor/sony/extra/Murray/apps/apps.mk)
endif

# Sound Enhancements
ifeq ($(TARGET_SHIPS_SOUND_ENHANCEMENT),true)
    $(call inherit-product, vendor/sony/extra/Murray/audio/dolby/dolby.mk)
endif

# Game Controllers
ifeq ($(TARGET_SUPPORTS_GAME_CONTROLLERS),true)
 PRODUCT_COPY_FILES += \
    $(call inherit-product, vendor/sony/extra/Common/controllers/gc.mk)
endif

# Xperia LWPs
ifeq ($(TARGET_SHIPS_XPERIA_LWP),true)
    $(call inherit-product, vendor/sony/extra/Common/lwp/lwp.mk)
endif

# Xperia LWPs | Newest
ifeq ($(TARGET_SHIPS_XPERIA_LWP_NEWEST),true)
    $(call inherit-product, vendor/sony/extra/Common/lwp/lwp-newest.mk)
endif