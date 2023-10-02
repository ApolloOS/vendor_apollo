# Inherit common Apollo stuff
$(call inherit-product, vendor/apollo/config/common.mk)

# Inherit Apollo atv device tree
$(call inherit-product, device/apollo/atv/apollo_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

# Apollo packages
PRODUCT_PACKAGES += \
    LineageCustomizer

DEVICE_PACKAGE_OVERLAYS += vendor/apollo/overlay/tv
