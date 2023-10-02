# Versioning System For Apollo
# Apollo RELEASE VERSION
APOLLO_VERSION_MAJOR = 1
APOLLO_VERSION_MINOR = 0
APOLLO_CODENAME = Aurora
#APOLLO_VERSION_MAINTENANCE = Beta

ifneq ($(SIGNING_KEYS),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(SIGNING_KEYS)/releasekey
endif

# Apollo Android version
APOLLO_VERSION_STATIC = 13.0

# Set Apollo Build Variant
APOLLO_BUILD_VARIANT ?= vanilla

#ifdef APOLLO_VERSION_MAINTENANCE
#    VERSION := $(APOLLO_VERSION_MAJOR).$(APOLLO_VERSION_MINOR)-$(APOLLO_VERSION_MAINTENANCE)
#else
    VERSION := $(APOLLO_VERSION_MAJOR).$(APOLLO_VERSION_MINOR)
#endif

TARGET_PRODUCT_SHORT := $(subst apollo_,,$(APOLLO_BUILDTYPE))

# Set APOLLO_BUILDTYPE
ifdef APOLLO_NIGHTLY
    APOLLO_BUILDTYPE := NIGHTLY
endif
ifdef APOLLO_EXPERIMENTAL
    APOLLO_BUILDTYPE := EXPERIMENTAL
endif
#ifdef APOLLO_MAINTENANCE
#    APOLLO_BUILDTYPE := MAINTENANCE
#endif
# Set Unofficial if no buildtype set (Buildtype should ONLY be set by APOLLO Devs!)
ifdef APOLLO_BUILDTYPE
else
    APOLLO_BUILDTYPE := UNOFFICIAL
endif

# Set APOLLO version
ifdef APOLLO_RELEASE
    APOLLO_BUILD_ZIP := Apollo-v$(VERSION)
else
    APOLLO_BUILD_ZIP := Apollo-v$(VERSION)-$(APOLLO_BUILD)-$(APOLLO_BUILDTYPE)-$(APOLLO_BUILD_VARIANT)-$(shell date +%Y%m%d)
endif

APOLLO_DEVICE := $(APOLLO_BUILD)
APOLLO_VERSION := $(VERSION)
APOLLO_DISPLAY_BUILDTYPE := $(APOLLO_BUILDTYPE)
APOLLO_FINGERPRINT := Apollo/$(VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date +%Y%m%d)
APOLLO_BUILD_TIMESTAMP := $(shell date +%Y%m%d)
APOLLO_BUILD_VERSION := $(APOLLO_BUILD_ZIP)
