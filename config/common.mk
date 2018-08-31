# Copyright (C) 2018 The Rise OS Project
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

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(VENDOR_RISEOS_PATH)/overlay/common

# bootanimation (720p)
ifneq ($(filter lilac kugo tulip, $(TARGET_DEVICE)),)
PRODUCT_COPY_FILES +=  \
    $(VENDOR_RISEOS_PATH)/prebuilt//bootanimation/720p/bootanimation.zip:system/media/bootanimation.zip
endif

# bootanimation (1080p)
ifneq ($(filter maple poplar pioneer discovery apollo akari suzu, $(TARGET_DEVICE)),)
PRODUCT_COPY_FILES +=  \
    $(VENDOR_RISEOS_PATH)/prebuilt/bootanimation/1080p/bootanimation.zip:system/media/bootanimation.zip
endif
