$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit mini common Apollo stuff
$(call inherit-product, vendor/apollo/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME
