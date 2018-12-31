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

# OS name
VENDOR := RiseOS

# OS version
ROM_VERSION := 9.0.0

# Builds are identified with the build ID format P.YYMMDD.bbb[.rN], where:
# P - represents the first letter of the code name of the platform release, e.g. P is Pie.
# YYMMDD - identifies the date when the release is branched from or synced with the development
# branch. It is not guaranteed to be the exact date at which a build was made as it is common
# for minor variations added to an existing build to re-use the same date code as the existing build.
# bbb - identifies individual versions related to the same date code, sequentially starting with 001.
# rN - is an optional, alphanumeric that identifies the currently used source code tag.
BUILD_ID := P.190101.001.r21

# ROM properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ros.version=$(ROM_VERSION)
