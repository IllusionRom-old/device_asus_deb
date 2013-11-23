
# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

PRODUCT_RELEASE_NAME := deb

$(call inherit-product, device/asus/deb/full_deb.mk)

$(call inherit-product, vendor/illusion/config/common.mk)

$(call inherit-product, vendor/illusion/config/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := illusion_deb
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razorg BUILD_FINGERPRINT="google/razorg/deb:4.4/KRT16O/907817:user/release-keys" PRIVATE_BUILD_DESC="razorg-user 4.4 KRT16O 907817 release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/illusion/bootanimation/Illusion1080x1080.zip:system/media/bootanimation.zip
