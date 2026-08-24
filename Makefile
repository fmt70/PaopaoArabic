include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PaopaoArabic
PaopaoArabic_FILES = Tweak.x
PaopaoArabic_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
