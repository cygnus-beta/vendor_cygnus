# Kernel
include vendor/cygnus/configs/BoardConfigKernel.mk

# Soong
include vendor/cygnus/configs/BoardConfigSoong.mk 


ifneq ($(TARGET_USES_PREBUILT_CAMERA_SERVICE), true) 
PRODUCT_SOONG_NAMESPACES += \
    frameworks/av/camera/cameraserver \
    frameworks/av/services/camera/libcameraservice
endif

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/cygnus/configs/BoardConfigQcom.mk
endif
