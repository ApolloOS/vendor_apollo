# Copyright (C) 2021 VoltageOS
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

ANDROID_VERSION := 13
APOLLOVERSION := 0.1-Beta

APOLLO_BUILD_TYPE ?= UNOFFICIAL
APOLLO_DATE_YEAR := $(shell date -u +%Y)
APOLLO_DATE_MONTH := $(shell date -u +%m)
APOLLO_DATE_DAY := $(shell date -u +%d)
APOLLO_DATE_HOUR := $(shell date -u +%H)
APOLLO_DATE_MINUTE := $(shell date -u +%M)
APOLLO_BUILD_DATE := $(APOLLO_DATE_YEAR)$(APOLLO_DATE_MONTH)$(APOLLO_DATE_DAY)-$(APOLLO_DATE_HOUR)$(APOLLO_DATE_MINUTE)
TARGET_PRODUCT_SHORT := $(subst apollo_,,$(APOLLO_BUILD))

# OFFICIAL_DEVICES
ifeq ($(APOLLO_BUILD_TYPE), OFFICIAL)
  LIST = $(shell cat vendor/apollo/apollo.devices)
    ifeq ($(filter $(APOLLO_BUILD), $(LIST)), $(APOLLO_BUILD))
      IS_OFFICIAL=true
      APOLLO_BUILD_TYPE := OFFICIAL
    endif
    ifneq ($(IS_OFFICIAL), true)
      APOLLO_BUILD_TYPE := UNOFFICIAL
      $(error Device is not official "$(APOLLO_BUILD)")
    endif
endif

APOLLO_VERSION := $(APOLLOVERSION)-$(APOLLO_BUILD)-$(APOLLO_BUILD_DATE)-$(APOLLO_BUILD_TYPE)
APOLLO_MOD_VERSION :=$(ANDROID_VERSION)-$(APOLLOVERSION)
APOLLO_DISPLAY_VERSION := ApolloOS-$(APOLLOVERSION)-$(APOLLO_BUILD_TYPE)
APOLLO_DISPLAY_BUILDTYPE := $(APOLLO_BUILD_TYPE)
APOLLO_FINGERPRINT := ApolloOS/$(APOLLO_MOD_VERSION)/$(TARGET_PRODUCT_SHORT)/$(APOLLO_BUILD_DATE)
APOLLO_PLATFORM_RELEASE_OR_CODENAME := 13.0

# ApolloOS System Version
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.apollo.version=$(APOLLO_DISPLAY_VERSION) \
  ro.apollo.build.status=$(APOLLO_BUILD_TYPE) \
  ro.modversion=$(APOLLO_MOD_VERSION) \
  ro.apollo.build.date=$(APOLLO_BUILD_DATE) \
  ro.apollo.buildtype=$(APOLLO_BUILD_TYPE) \
  ro.apollo.fingerprint=$(APOLLO_FINGERPRINT) \
  ro.apollo.device=$(APOLLO_BUILD) \
  ro.apollo.platform_release_or_codename=$(APOLLO_PLATFORM_RELEASE_OR_CODENAME) \
  org.apollo.version=$(APOLLOVERSION)
