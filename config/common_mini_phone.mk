# Inherit mini common Bliss stuff
$(call inherit-product, vendor/apollo/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/apollo/config/telephony.mk)
