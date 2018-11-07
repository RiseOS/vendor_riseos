# Copyright 2018 The Rise OS Project
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

# vendor path
VENDOR_RISEOS := vendor/riseos

$(call inherit-product-if-exists, $(VENDOR_RISEOS)/twrp/*/*.mk)

# TWRP config
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_THEME := portrait_hdpi
TW_USE_TOOLBOX := true

# init
PRODUCT_PACKAGES += \
    init.recovery.usb.rc \
    twrp.fstab
