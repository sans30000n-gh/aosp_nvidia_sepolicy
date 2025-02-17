#
# Copyright (C) 2021 The LineageOS Project
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

# Common tegra policy
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += device/nvidia/sepolicy/tegra/common/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += device/nvidia/sepolicy/tegra/common/public
BOARD_VENDOR_SEPOLICY_DIRS   += device/nvidia/sepolicy/tegra/common/vendor
LINEAGE_VENDOR_SEPOLICY_DIRS += device/nvidia/sepolicy/tegra/lineage/vendor
BOARD_VENDOR_SEPOLICY_DIRS += $(LINEAGE_VENDOR_SEPOLICY_DIRS)

ifeq ($(TARGET_TEGRA_VERSION), t210)
BOARD_VENDOR_SEPOLICY_DIRS   += device/nvidia/sepolicy/t210/common/vendor
LINEAGE_VENDOR_SEPOLICY_DIRS += device/nvidia/sepolicy/t210/lineage/vendor
else ifneq ($(filter $(TARGET_TEGRA_VERSION), t186 t194 t234),)
BOARD_VENDOR_SEPOLICY_DIRS += device/nvidia/sepolicy/t186/common/vendor
LINEAGE_VENDOR_SEPOLICY_DIRS += device/nvidia/sepolicy/t186/lineage/vendor
endif
