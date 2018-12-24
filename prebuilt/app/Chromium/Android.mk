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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := Chromium
LOCAL_SRC_FILES := Chromium.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
LOCAL_REQUIRED_MODULES := \
    libchrome.so \
    libchromium_android_linker.so \
    libcrashpad_handler.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libchrome.so
LOCAL_SRC_FILES := lib/arm/libchrome.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)/Chromium/lib/arm/
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libchromium_android_linker.so
LOCAL_SRC_FILES := lib/arm/libchromium_android_linker.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)/Chromium/lib/arm/
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcrashpad_handler.so
LOCAL_SRC_FILES := lib/arm/libcrashpad_handler.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_APPS)/Chromium/lib/arm/
include $(BUILD_PREBUILT)
