# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

ADDITIONAL_SYSTEM_PROPERTIES += \
  ro.apollo.codename=$(APOLLO_CODENAME) \
  ro.apollo.version=$(APOLLO_VERSION) \
  ro.apollo.build.status=$(APOLLO_BUILDTYPE) \
  ro.apollo.changelog.version=Changelog-$(APOLLO_VERSION) \
  ro.apollo.fingerprint=$(APOLLO_FINGERPRINT) \
  ro.apollo.static.version=$(APOLLO_VERSION_STATIC) \
  ro.apollo.build.variant=$(APOLLO_BUILD_VARIANT) \
  ro.apollo.build.timestamp=$(APOLLO_BUILD_TIMESTAMP) \
  ro.apollo.build=$(APOLLO_BUILD_ZIP)
