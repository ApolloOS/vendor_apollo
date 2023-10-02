# Inherit full common Apollo stuff
$(call inherit-product, vendor/apollo/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include apollo LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/apollo/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/apollo/config/telephony.mk)
