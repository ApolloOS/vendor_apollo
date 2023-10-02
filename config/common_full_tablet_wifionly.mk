$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common Apollo stuff
$(call inherit-product, vendor/apollo/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Apollo LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/apollo/overlay/dictionaries
