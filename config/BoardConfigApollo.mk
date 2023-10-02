include vendor/apollo/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/apollo/config/BoardConfigQcom.mk
endif

include vendor/apollo/config/BoardConfigSoong.mk
