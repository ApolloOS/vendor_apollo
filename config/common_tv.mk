# Inherit common Bliss stuff
$(call inherit-product, vendor/apollo/config/common.mk)

# Inherit Bliss atv device tree
$(call inherit-product, device/apollo/atv/apollo_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

# Bliss packages
PRODUCT_PACKAGES += \
    LineageCustomizer

DEVICE_PACKAGE_OVERLAYS += vendor/apollo/overlay/tv
