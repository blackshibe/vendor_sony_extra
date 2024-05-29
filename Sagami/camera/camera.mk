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
    vendor/sony/extra/Sagami/camera

# Photo Pro (pdx234 | 1 V)
ifeq ($(TARGET_SHIPS_SONY_CAMERA),true)
PRODUCT_PACKAGES += PhotoPro-New
endif

# Photo Pro (pdx223 | 1 IV)
ifeq ($(TARGET_SHIPS_SONY_CAMERA_OLD),true)
PRODUCT_PACKAGES += PhotoPro
endif

# Camera
PRODUCT_PACKAGES += \
    CinemaPro \
    VideoPro \
    CameraCommon \
    CameraAddonPermission \
    CameraCommonPermission \
    CameraPanorama \
    CreativeEffect \
    PortraitSelfie \
    MovieCreator