# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

### Enhanced NFC
##$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/lgl21/lgl21.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lgl21
PRODUCT_NAME := cm_lgl21
PRODUCT_BRAND := lge
PRODUCT_MODEL := LGL21
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geehdc_kddi_jp BUILD_FINGERPRINT=KDDI/geehdc_kddi_jp/geehdc:4.0.4/IMM76L/LGL2110d.1365073563:user/release-keys PRIVATE_BUILD_DESC="geehdc_kddi_jp-user 4.0.4 IMM76L LGL2110d.1365073563 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
