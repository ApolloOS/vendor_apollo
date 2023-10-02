$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common Bliss stuff
$(call inherit-product, vendor/apollo/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Bliss LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/apollo/overlay/dictionaries
