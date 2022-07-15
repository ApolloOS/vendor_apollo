TARGET_BOOT_ANIMATION_RES ?= undefined

ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
     PRODUCT_COPY_FILES += vendor/apollo/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)
     PRODUCT_COPY_FILES += vendor/apollo/bootanimation/bootanimation_1440.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),undefined)
     $(warning Target bootanimation res is undefined, using 1080p bootanimation )
     PRODUCT_COPY_FILES += vendor/apollo/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip
else
     $(warning Defined bootanimation res is wrong, using 1080p bootanimation )
     PRODUCT_COPY_FILES += vendor/apollo/bootanimation/bootanimation_1080.zip:system/media/bootanimation.zip
endif
