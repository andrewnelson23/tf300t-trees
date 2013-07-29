# Inherit AOSP device configuration for tf300t
$(call inherit-product, device/asus/tf300t/full_tf300t.mk)

# Inherit RootBox common_tablet bits
$(call inherit-product, vendor/rootbox/configs/common_tablet.mk)

# Grouper Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/tf300t

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_tf300t

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_tf300t
PRODUCT_BRAND := Asus
PRODUCT_DEVICE := tf300t
PRODUCT_MODEL := TF300T
PRODUCT_MANUFACTURER := asus

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT="asus/WW_epad/EeePad:4.2.1/JOP40D/WW_epad-10.6.1.15.3-20130416:user/release-keys" PRIVATE_BUILD_DESC="WW_epad-user 4.2.1 JOP40D WW_epad-10.6.1.15.3-20130416 release-keys"

# Copy bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
